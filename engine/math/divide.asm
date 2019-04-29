INCLUDE "constants.inc"


SECTION "engine/math/divide.asm", ROMX

_Divide::
	xor a
	ldh [hMathBuffer + 0], a
	ldh [hMathBuffer + 1], a
	ldh [hMathBuffer + 2], a
	ldh [hMathBuffer + 3], a
	ldh [hMathBuffer + 4], a

	ld a, 9
	ld e, a

.loop
	ldh a, [hMathBuffer + 0]
	ld c, a
	ldh a, [hDividend + 1]
	sub c
	ld d, a

	ldh a, [hDivisor]
	ld c, a
	ldh a, [hDividend + 0]
	sbc c
	jr c, .next

	ldh [hDividend + 0], a

	ld a, d
	ldh [hDividend + 1], a

	ldh a, [hMathBuffer + 4]
	inc a
	ldh [hMathBuffer + 4], a

	jr .loop

.next
	ld a, b
	cp 1
	jr z, .done

	ldh a, [hMathBuffer + 4]
	add a
	ldh [hMathBuffer + 4], a

	ldh a, [hMathBuffer + 3]
	rla
	ldh [hMathBuffer + 3], a

	ldh a, [hMathBuffer + 2]
	rla
	ldh [hMathBuffer + 2], a

	ldh a, [hMathBuffer + 1]
	rla
	ldh [hMathBuffer + 1], a

	dec e
	jr nz, .next2

	ld e, 8
	ldh a, [hMathBuffer + 0]
	ldh [hDivisor], a
	xor a
	ldh [hMathBuffer + 0], a

	ldh a, [hDividend + 1]
	ldh [hDividend + 0], a

	ldh a, [hDividend + 2]
	ldh [hDividend + 1], a

	ldh a, [hDividend + 3]
	ldh [hDividend + 2], a

.next2
	ld a, e
	cp 1
	jr nz, .okay
	dec b

.okay
	ldh a, [hDivisor]
	srl a
	ldh [hDivisor], a

	ldh a, [hMathBuffer + 0]
	rr a
	ldh [hMathBuffer + 0], a

	jr .loop

.done
	ldh a, [hDividend + 1]
	ldh [hRemainder], a

	ldh a, [hMathBuffer + 4]
	ldh [hQuotient + 3], a

	ldh a, [hMathBuffer + 3]
	ldh [hQuotient + 2], a

	ldh a, [hMathBuffer + 2]
	ldh [hQuotient + 1], a

	ldh a, [hMathBuffer + 1]
	ldh [hQuotient + 0], a

	ret