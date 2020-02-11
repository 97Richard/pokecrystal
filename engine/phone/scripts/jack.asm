INCLUDE "macros/data.inc"
INCLUDE "macros/scripts/events.inc"
INCLUDE "constants/engine_flags.inc"
INCLUDE "constants/landmark_constants.inc"
INCLUDE "constants/script_constants.inc"
INCLUDE "constants/trainer_constants.inc"
INCLUDE "constants/wram_constants.inc"


SECTION "engine/phone/scripts/jack.asm", ROMX

JackPhoneCalleeScript::
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	checkflag ENGINE_JACK
	iftrue .WantsBattle
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_JACK_MONDAY_MORNING
	iftrue .NotMonday
	readvar VAR_WEEKDAY
	ifnotequal MONDAY, .NotMonday
	checktime MORN
	iftrue JackMondayMorning

.NotMonday:
	farsjump JackPhoneTipsScript

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, NATIONAL_PARK
	farsjump JackWantsBattleScript

JackPhoneCallerScript::
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	ifequal 0, JackBattleTrivia
	checkflag ENGINE_JACK
	iftrue .WaitingForBattle
	checkflag ENGINE_JACK_MONDAY_MORNING
	iftrue .WaitingForBattle
	farscall PhoneScript_Random2
	ifequal 0, JackWantsToBattle

.WaitingForBattle:
	farscall PhoneScript_Random3
	ifequal 0, JackFindsRare
	farsjump Phone_GenericCall_Male

JackMondayMorning:
	setflag ENGINE_JACK_MONDAY_MORNING

JackWantsToBattle:
	getlandmarkname STRING_BUFFER_5, NATIONAL_PARK
	setflag ENGINE_JACK
	farsjump PhoneScript_WantsToBattle_Male

JackFindsRare:
	farsjump Phone_CheckIfUnseenRare_Male

JackBattleTrivia:
	farsjump JackTriviaScript
