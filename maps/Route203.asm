	object_const_def ; object_event constants

Route203_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route203_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 44,  9, OREBURGH_GATE_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
