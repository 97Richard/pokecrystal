INCLUDE "constants/hardware_constants.inc"


SECTION "home/header@NULL", ROM0
NULL::


; rst vectors (called through the rst instruction)

SECTION "home/header@rst0", ROM0
rst0::
	di
	jp Start

SECTION "home/header@rst8", ROM0 ; rst FarCall
rst8::
	jp FarCall_hl

SECTION "home/header@rst10", ROM0 ; rst Bankswitch
rst10::
	ldh [hROMBank], a
	ld [MBC3RomBank], a
	ret

SECTION "home/header@rst18", ROM0
rst18::
	rst $38

SECTION "home/header@rst20", ROM0
rst20::
	rst $38

SECTION "home/header@rst28", ROM0 ; rst JumpTable
rst28::
	push de
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
; SECTION "rst30", ROM0[$0030]
	ld l, a
	pop de
	jp hl

SECTION "home/header@rst38", ROM0
rst38::
	rst $38


; Game Boy hardware interrupts

SECTION "home/header@vblank", ROM0
vblank::
	jp VBlank

SECTION "home/header@lcd", ROM0
lcd::
	jp LCD

SECTION "home/header@timer", ROM0
timer::
	jp Timer

SECTION "home/header@serial", ROM0
serial::
	jp Serial

SECTION "home/header@joypad", ROM0
joypad::
	jp Joypad


; Game Boy cartridge header

SECTION "home/header@Header", ROM0

Start:
	nop
	jp _Start

; The cartridge header data is filled in by rgbfix.
; This makes sure it doesn't get used.
	ds $0150 - $0104
