	object_const_def ; object_event constants

SandgemHouse1_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SandgemHouse1_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, SANDGEM_TOWN, 2
	warp_event  3,  7, SANDGEM_TOWN, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
