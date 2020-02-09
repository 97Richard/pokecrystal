INCLUDE "constants/music_common.inc"
INCLUDE "constants/floating_constants.inc"


SECTION "audio/music/aftertherivalfight.asm", ROMX, BANK[BANK_MUSIC_RIVAL_ENCOUNTER]

Music_AfterTheRivalFight::
	musicheader 4, 1, Music_AfterTheRivalFight_Ch1
	musicheader 1, 2, Music_AfterTheRivalFight_Ch2
	musicheader 1, 3, Music_AfterTheRivalFight_Ch3
	musicheader 1, 4, Music_AfterTheRivalFight_Ch4

Music_AfterTheRivalFight_Ch1:
	tempo 112
	volume $77
	dutycycle $0
	tone $0001
	vibrato $8, $14
	stereopanning $f0
	notetype $c, $b2
	octave 2
	note G#, 4
	note G#, 4
	intensity $82
	octave 3
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	loopchannel 0, Music_LookRival_Ch1.mainloop

Music_AfterTheRivalFight_Ch2:
	dutycycle $1
	vibrato $6, $35
	stereopanning $f
	notetype $c, $c2
	octave 4
	note G#, 4
	note G#, 4
	intensity $a2
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	loopchannel 0, Music_LookRival_Ch2.mainloop

Music_AfterTheRivalFight_Ch3:
	notetype $c, $28
	octave 3
	note D#, 2
	note __, 2
	note D#, 2
	note __, 2
	note G#, 2
	note F#, 2
	note F_, 2
	note D#, 2
	loopchannel 0, Music_LookRival_Ch3.mainloop

Music_AfterTheRivalFight_Ch4:
	togglenoise $3
	stereopanning $f
	notetype $c
	note D_, 4
	note D_, 4
	note D#, 2
	note D_, 2
	note D_, 2
	note D_, 2
	loopchannel 0, Music_LookRival_Ch4.mainloop
