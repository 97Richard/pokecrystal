INCLUDE "constants.inc"


SECTION "engine/events/repel.asm", ROMX

RepelWoreOffScript::
	opentext
	writetext .text
	waitbutton
	closetext
	end

.text
	; REPEL's effect wore off.
	text_far _RepelWoreOffText
	text_end