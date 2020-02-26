INCLUDE "macros/coords.inc"
INCLUDE "macros/predef.inc"
INCLUDE "constants/charmap.inc"
INCLUDE "constants/gfx_constants.inc"


SECTION "engine/link/place_waiting_text", ROMX

PlaceWaitingText::
	hlcoord 3, 10
	ld b, 1
	ld c, 11

	ld a, [wBattleMode]
	and a
	jr z, .notinbattle

	call Textbox
	jr .proceed

.notinbattle
	predef LinkTextboxAtHL

.proceed
	hlcoord 4, 11
	ld de, .Waiting
	call PlaceString
	ld c, 50
	jp DelayFrames

.Waiting:
	db "Waiting...!@"
