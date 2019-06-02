; http://forums.glitchcity.info/index.php?topic=7509.msg206449#msg206449


SECTION "mobile/news/news@Unreferenced_Function1f4003", ROMX

if !DEF(_CRYSTAL_EU)
	db $cc, $6b, $1e ; unused
elif DEF(_CRYSTAL_ES)
	db $1f, $6c, $1e ; unused
endc

Unreferenced_Function1f4003:
	ld a, $6
	call GetSRAMBank
	ld hl, .news_data
	ld de, $a000
	ld bc, $1000
	call CopyBytes
	call CloseSRAM
	ret

.news_data
INCBIN "mobile/news/news_1.bin"


SECTION "mobile/news/news@Unreferenced_Function1f4dbe", ROMX

Unreferenced_Function1f4dbe:
	ld a, $6
	call GetSRAMBank
	ld hl, .news_data
	ld de, $a000
	ld bc, $1000
	call CopyBytes
	call CloseSRAM
	ret

.news_data
INCBIN "mobile/news/news_2.bin"


SECTION "mobile/news/news@Function1f5d9f", ROMX

Function1f5d9f:
	ld a, $6
	call GetSRAMBank
	ld hl, .news_data
	ld de, $a000
	ld bc, $1000
	call CopyBytes
	call CloseSRAM
	ret

.news_data
INCBIN "mobile/news/news_3.bin"
