INCLUDE "constants/floating_constants.inc"


SECTION "engine/events/kurt_selectquantity_interpretjoypad", ROMX

Kurt_SelectQuantity_InterpretJoypad::
	call BuySellToss_InterpretJoypad
	ld b, a
	ret
