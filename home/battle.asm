UserPartyAttr::
	push af
	ldh a, [hBattleTurn]
	and a
	jr nz, .ot
	pop af
	jr BattlePartyAttr
.ot
	pop af
	jr OTPartyAttr

OpponentPartyAttr::
	push af
	ldh a, [hBattleTurn]
	and a
	jr z, .ot
	pop af
	jr BattlePartyAttr
.ot
	pop af
	jr OTPartyAttr

BattlePartyAttr::
; Get attribute a from the party struct of the active battle mon. 
	push bc
	ld c, a
	ld b, 0
	ld hl, wPartyMons
	add hl, bc
	ld a, [wCurBattleMon]
	call GetPartyLocation
	pop bc
	ret

OTPartyAttr::
; Get attribute a from the party struct of the active enemy mon.
	push bc
	ld c, a
	ld b, 0
	ld hl, wOTPartyMon1Species
	add hl, bc
	ld a, [wCurOTMon]
	call GetPartyLocation
	pop bc
	ret

ResetDamage::
	xor a
	ld [wCurDamage], a
	ld [wCurDamage + 1], a
	ret

SetPlayerTurn::
	xor a
	ldh [hBattleTurn], a
	ret

SetEnemyTurn::
	ld a, 1
	ldh [hBattleTurn], a
	ret

UpdateOpponentInParty::
	ldh a, [hBattleTurn]
	and a
	jr z, UpdateEnemyMonInParty
	jr UpdateBattleMonInParty

UpdateUserInParty::
	ldh a, [hBattleTurn]
	and a
	jr z, UpdateBattleMonInParty
	jr UpdateEnemyMonInParty

UpdateBattleMonInParty::
; Update level, status, current HP

	ld a, [wCurBattleMon]

UpdateBattleMon::
	ld hl, wPartyMon1Level
	call GetPartyLocation

	ld d, h
	ld e, l
	ld hl, wBattleMonLevel
	ld bc, wBattleMonMaxHP - wBattleMonLevel
	jp CopyBytes

UpdateEnemyMonInParty::
; Update level, status, current HP

; No wildmons.
	ld a, [wBattleMode]
	dec a
	ret z

	ld a, [wCurOTMon]
	ld hl, wOTPartyMon1Level
	call GetPartyLocation

	ld d, h
	ld e, l
	ld hl, wEnemyMonLevel
	ld bc, wEnemyMonMaxHP - wEnemyMonLevel
	jp CopyBytes

RefreshBattleHuds::
	call UpdateBattleHuds
	ld c, 3
	call DelayFrames
	jp WaitBGMap

UpdateBattleHuds::
	farcall UpdatePlayerHUD
	farcall UpdateEnemyHUD
	ret

INCLUDE "home/battle_vars.asm"

FarCopyRadioText::
	inc hl
	ldh a, [hROMBank]
	push af
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ld a, e
	ld l, a
	ld a, d
	ld h, a
	ld de, wRadioText
	ld bc, 2 * SCREEN_WIDTH
	call CopyBytes
	pop af
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ret

MobileTextBorder::
	; For mobile link battles only.
	ld a, [wLinkMode]
	cp LINK_MOBILE
	ret c

	; Draw a cell phone icon at the
	; top right corner of the border.
	hlcoord 19, 12
	ld [hl], $5e ; top
	hlcoord 19, 13
	ld [hl], $5f ; bottom
	ret

BattleTextbox::
; Open a textbox and print text at hl.
	push hl
	call SpeechTextbox
	call MobileTextBorder
	call UpdateSprites
	call ApplyTilemap
	pop hl
	jp PrintTextboxText

PrintButItFailed::
	ld hl, ButItFailedText

StdBattleTextbox::
; Open a textbox and print battle text at 20:hl.

	ldh a, [hROMBank]
	push af

	ld a, BANK(BattleText)
	rst Bankswitch

	call BattleTextbox

	pop af
	rst Bankswitch
	ret

GetBattleAnimPointer::
	ld a, BANK(BattleAnimations)
	rst Bankswitch

	ld a, [hli]
	ld [wBattleAnimAddress], a
	ld a, [hl]
	ld [wBattleAnimAddress + 1], a

	; ClearBattleAnims is the only function that calls this...
	ld a, BANK(ClearBattleAnims)
	rst Bankswitch

	ret

GetBattleAnimByte::
	push hl
	push de

	ld hl, wBattleAnimAddress
	ld e, [hl]
	inc hl
	ld d, [hl]

	ld a, BANK(BattleAnimations)
	rst Bankswitch

	ld a, [de]
	ld [wBattleAnimByte], a
	inc de

	ld a, BANK(BattleAnimCommands)
	rst Bankswitch

	ld [hl], d
	dec hl
	ld [hl], e

	pop de
	pop hl

	ld a, [wBattleAnimByte]
	ret

HasUserFainted::
	ldh a, [hBattleTurn]
	and a
	jr z, HasPlayerFainted
HasEnemyFainted::
	ld hl, wEnemyMonHP
	jr CheckIfHPIsZero

HasOpponentFainted::
	ldh a, [hBattleTurn]
	and a
	jr z, HasEnemyFainted
HasPlayerFainted::
	ld hl, wBattleMonHP
CheckIfHPIsZero::
	ld a, [hli]
	or [hl]
	ret

CheckAlreadyFailed::
	ld a, [wAlreadyFailed]
	and a
	ret nz
	inc a
	ld [wAlreadyFailed], a
	dec a
	ret

BattleCommand_switchturn::
; switchturn
	ldh a, [hBattleTurn]
	xor 1
	ldh [hBattleTurn], a
	ret

IsOpponentLevitateMon::
	call BattleCommand_switchturn
	call IsCurrentMonLevitateMon
	push af
	call BattleCommand_switchturn
	pop af
	ret

IsCurrentMonLevitateMon::
	ldh a, [hBattleTurn]
	and a
	ld a, [wBattleMonSpecies]
	jr z, .go
	ld a, [wEnemyMonSpecies]
.go

; fallthrough

IsLevitateMon::
	push bc
	push hl
	ld b, a
	farcall _IsLevitateMon
	pop hl
	pop bc
	ret
