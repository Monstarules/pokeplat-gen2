InitialEvents:
	dw EVENT_RIVAL_PLAYERS_HOUSE
	dw EVENT_TWINLEAF_TOWN_RIVAL
	dw EVENT_ROUTE_201_ROWAN
	dw EVENT_ROUTE_201_DAWNLUCAS
	dw EVENT_ROUTE_201_BRIEFCASE
	dw EVENT_ROUTE_201_GRASS_GUY
	dw EVENT_SANDGEM_TOWN_RIVAL
	dw EVENT_SANDGEM_TOWN_ROWAN

	dw EVENT_INITIALIZED_EVENTS
	dw -1 ; end

InitialEngineFlags:
	dw -1 ; end

InitialVariableSprites:
initvarsprite: MACRO
; variable sprite, appearance sprite
	db \1 - SPRITE_VARS, \2
ENDM
	initvarsprite SPRITE_DAWN_LUCAS, SPRITE_KRIS
	db -1 ; end
