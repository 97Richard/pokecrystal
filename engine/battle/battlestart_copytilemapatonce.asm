INCLUDE "constants/floating_constants.inc"


SECTION "engine/battle/battlestart_copytilemapatonce", ROMX

BattleStart_CopyTilemapAtOnce::
	call CGBOnly_CopyTilemapAtOnce
	ret
