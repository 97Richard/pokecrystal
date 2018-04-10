#!/bin/sh
set -e

# Generate the file with ignored labels
rm -f unused_ignore.txt

# Scrape labels from a few select files
sed -n -e 's/^\(BattleTowerMons[0-9][0-9]*\):$/\1/p' data/battle_tower/parties.asm >> unused_ignore.txt
sed -n -e 's/^\(BattleTowerTrainer[0-9][0-9]*DataTable\):$/\1/p' data/battle_tower/unknown.asm >> unused_ignore.txt
sed -n -e 's/^\(IncGradGBPalTable_[0-9][0-9]\)::.*/\1/p' home/fade.asm >> unused_ignore.txt
sed -n -e 's/^\([A-Za-z]*Menu\):.*/\1/p' engine/menus/main_menu.asm | grep -xv MainMenu >> unused_ignore.txt

# Add more labels manually
cat >> unused_ignore.txt << EOF
AI_TryItem.no
AI_TryItem.used_item
BattleBGEffect_1c.DMG_PlayerData
BattleTowerTrainerDataEnd
BoxNameInputUpper
BuenaPrizeItems.End
CheckDict.dakuten
CheckDict.diacritic
CheckPlayerMoveTypeMatchups.not_very_effective
CheckPlayerTurn
CheckShininess.Shiny
Coord2Attr
Cry_Teddiursa_branch_f3286
Cry_Teddiursa_branch_f328e
Cry_Teddiursa_branch_f3296
Cry_Teddiursa_branch_f32a2
Cry_Teddiursa_branch_f32ae
Decompress.Literal
Decompress.long
Decompress.negative
DrawHP
EnemyAttackDamage.physical
EngineFlagAction.check
Facings.End
FemalePlayerNameArray
FlinchTarget
FlyMap.JohtoFlyMap
ForcePlayerMonChoice.enemy_fainted_mobile_error
Function24f19
GetDamageStats
GetIcon
GetNumberedTMHM.skip_two
GetTreeScore.bad
GoldenrodUnderground_MapScripts.Sunday
HDMATransfer_Wait123Scanlines
HandleWeather.player_first
HasRockSmash.no
InitBattleAnimBuffer.milk_drink
InterpretTwoOptionMenu
LeerCorreosIngleses
LeggiPostaInglese
LireLeCourrierAnglais
MalePlayerNameArray
Mobile_GetMenuSelection
NamingScreen_AdvanceCursor_CheckEndOfString
NamingScreen_LoadNextCharacter
POKEDEX_SCX
PlayerAttackDamage.physical
PlayersPCMenuData.PlayersPCMenuList2
Pokedex_GetArea.kanto
Pokedex_LoadGFX.LoadPokedexSlowpokeLZ
Pokedex_UpdateUnownMode.done
PrintBCDDigit.nonzeroDigit
PrintBCDNumber.numberEqualsZero
RadioChannels.kanto
RestorePPEffect.pp_is_maxed_out
SetSeenMon
Sfx_GetEggFromDayCareMan_Ch5
Sfx_GetEggFromDayCareMan_Ch6
Sfx_GetEggFromDayCareMan_Ch7
Sfx_GetEggFromDayCareMan_Ch8
Sfx_LevelUp_Ch5
Sfx_LevelUp_Ch6
Sfx_LevelUp_Ch7
Sfx_LevelUp_Ch8
Sfx_NoSignal_branch_f26ff
Sfx_ReadText_Ch5
Sfx_Unknown5F_Ch8
Sfx_Unknown5F_branch_f270e
SmallFarFlagAction.reset
SwitchSpeed
TileAnimationPalette.color1
UpdateBGMap.bottom
WaitDMATransfer
_CalcHoursDaysSince
_PrintNum.long
_PrintNum.seven
EOF

# Create objects with all the labels exported
# Excluding wram.o since that includes a lot of labels we aren't interested in.
objs=$(make -n -p | grep '^crystal_obj :=' | sed -e 's/^crystal_obj := //' -e 's/wram.o //')
rm -f $objs
make RGBASM='rgbasm -E' $objs

# Check if any of the ignored labels even exist anymore
python3 -u tools/unusedsymbols.py -D $objs | fgrep --line-buffered -xvf - unused_ignore.txt | tee unused_ignore_gone.txt
find unused_ignore_gone.txt -empty -delete

# Check if any of the ignored labels are actually used
#python3 -u tools/unusedsymbols.py $objs | fgrep --line-buffered -xvf - unused_ignore.txt | tee unused_ignore_used.txt
#find unused_ignore_used.txt -empty -delete

# Run the program to generate a list of unreferenced labels
# All the labels in unused_ignore.txt are filtered out,
#   as well as those ending with `.anon_dw`
python3 -u tools/unusedsymbols.py -- $objs \
    | sed -u -e '/\.anon_dw$/d' \
    | fgrep --line-buffered -xvf unused_ignore.txt \
    | tee unused.txt
find unused.txt -empty -delete

# Clean it up so a regular make won't mess up for the user
rm -f $objs unused_ignore.txt

##### This is the end of regular unused symbol checking.
##### From here on out it's grep-based hacks for constants.

# Check BATTLETOWERACTION_
sed -ne 's/^\tconst \(BATTLETOWERACTION_[^ ]*\).*/\1/p' constants/battle_tower_constants.asm \
    | while read const; do
    if ! fgrep -rw "$const" maps > /dev/null; then
        echo "$const" | tee -a unused.txt
    fi
done

# Check unused trainers
sed -ne '/^KRIS/,/^NUM_TRAINER_CLASSES/s/^\tconst \(.*\)/\1/p' constants/trainer_constants.asm \
    | while read const; do
    if ! fgrep -rw "$const" maps > /dev/null; then
        echo "$const" | tee -a unused.txt
    fi
done

# Sprite animation related things
sed -ne 's/^\tconst \(SPRITE_ANIM_INDEX_[^ ]*\).*/\1/p' constants/sprite_anim_constants.asm \
    | while read const; do
    if ! fgrep -rw "$const" engine > /dev/null; then
        echo "$const" | tee -a unused.txt
    fi
done
sed -ne 's/^\tconst \(SPRITE_ANIM_SEQ_[^ ]*\).*/\1/p' constants/sprite_anim_constants.asm \
    | while read const; do
    if ! fgrep -rw "$const" engine data/sprite_anims/sequences.asm > /dev/null; then
        echo "$const" | tee -a unused.txt
    fi
done
sed -ne 's/^\tconst \(SPRITE_ANIM_FRAMESET_ [^ ]*\).*/\1/p' constants/sprite_anim_constants.asm \
    | while read const; do
    if ! fgrep -rw "$const" engine > /dev/null; then
        echo "$const" | tee -a unused.txt
    fi
done
sed -ne 's/^\tconst \(SPRITE_ANIM_OAMSET[^ ]*\).*/\1/p' constants/sprite_anim_constants.asm \
    | while read const; do
    if ! fgrep -rw "$const" data/sprite_anims/framesets.asm > /dev/null; then
        echo "$const" | tee -a unused.txt
    fi
done

# Check unused move effects and commands
sed -ne 's/^\tconst \(EFFECT_[^ ]*\).*/\1/p' constants/move_effect_constants.asm \
    | egrep -v '_(UP|DOWN)(_2|_HIT)?$' \
    | while read const; do
    if ! fgrep -rw "$const" data/moves/moves.asm > /dev/null; then
        echo "$const" | tee -a unused.txt
    fi
done
sed -ne 's/^\tcommand \([^ ]*\).*/\1/p' macros/scripts/battle_commands.asm \
    | fgrep -xv 'raisesubnoanim' \
    | while read const; do
    if ! fgrep -rw "$const" data/moves/effects.asm > /dev/null; then
        echo "$const" | tee -a unused.txt
    fi
done
