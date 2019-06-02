INCLUDE "constants/maps_common.inc"

	object_const_def ; object_event constants
	const ROUTE15FUCHSIAGATE_OFFICER


SECTION "maps/Route15FuchsiaGate", ROMX

Route15FuchsiaGate_MapScripts::
	db 0 ; scene scripts

	db 0 ; callbacks

Route15FuchsiaGateOfficerScript:
	jumptextfaceplayer Route15FuchsiaGateOfficerText

Route15FuchsiaGateOfficerText:
	text "¿Estás trabajando"
	line "en una #DEX?"

	para "Es muy importante."
	line "¡No te rindas!"
	done

Route15FuchsiaGate_MapEvents::
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, FUCHSIA_CITY, 8
	warp_event  0,  5, FUCHSIA_CITY, 9
	warp_event  9,  4, ROUTE_15, 1
	warp_event  9,  5, ROUTE_15, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route15FuchsiaGateOfficerScript, -1
