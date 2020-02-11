INCLUDE "macros/scripts/events.inc"
INCLUDE "constants/pokemon_data_constants.inc"
INCLUDE "constants/script_constants.inc"
INCLUDE "constants/wram_constants.inc"


SECTION "engine/phone/scripts/bill.asm", ROMX

BillPhoneCalleeScript::
	checktime DAY
	iftrue .daygreet
	checktime NITE
	iftrue .nitegreet
	farwritetext BillPhoneMornGreetingText
	promptbutton
	sjump .main

.daygreet
	farwritetext BillPhoneDayGreetingText
	promptbutton
	sjump .main

.nitegreet
	farwritetext BillPhoneNiteGreetingText
	promptbutton
	sjump .main

.main
	farwritetext BillPhoneGenericText
	promptbutton
	readvar VAR_BOXSPACE
	getnum STRING_BUFFER_3
	ifequal 0, .full
	ifless PARTY_LENGTH, .nearlyfull
	farwritetext BillPhoneNotFullText
	end

.nearlyfull
	farwritetext BillPhoneNearlyFullText
	end

.full
	farwritetext BillPhoneFullText
	end

BillPhoneCallerScript::
	farwritetext BillPhoneNewlyFullText
	waitbutton
	end
