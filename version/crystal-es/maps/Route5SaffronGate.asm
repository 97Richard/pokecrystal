INCLUDE "constants/maps_common.inc"

	object_const_def ; object_event constants
	const ROUTE5SAFFRONGATE_OFFICER


SECTION "maps/Route5SaffronGate", ROMX

Route5SaffronGate_MapScripts::
	db 0 ; scene scripts

	db 0 ; callbacks

Route5SaffronGateOfficerScript:
	jumptextfaceplayer Route5SaffronGateOfficerText

Route5SaffronGateOfficerText:
	text "Eres de JOHTO,"
	line "¿verdad?"

	para "¿Qué opinas de"
	line "KANTO? Es bonito,"
	cont "¿no crees?"
	done

Route5SaffronGate_MapEvents::
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, ROUTE_5, 2
	warp_event  5,  0, ROUTE_5, 3
	warp_event  4,  7, SAFFRON_CITY, 9
	warp_event  5,  7, SAFFRON_CITY, 9

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route5SaffronGateOfficerScript, -1
