musicheader: MACRO
	; number of tracks, track idx, address
	dbw ((\1 - 1) << 6) + (\2 - 1), \3
ENDM

note: MACRO
	dn (\1), (\2) - 1
ENDM

sound: MACRO
	note \1, \2
	db \3 ; intensity
	dw \4 ; frequency
ENDM

noise: MACRO
	note \1, \2 ; duration
	db \3 ; intensity
	db \4 ; frequency
ENDM

; MusicCommands indexes (see audio/engine.asm)
	enum_start $d8

	enum notetype_cmd ; $d8
octave: MACRO
	db notetype_cmd - (\1)
ENDM

notetype: MACRO
	db notetype_cmd
	db \1 ; note_length
	if _NARG >= 2
	db \2 ; intensity
	endc
ENDM

	enum pitchoffset_cmd ; $d9
pitchoffset: MACRO
	db pitchoffset_cmd
	dn \1, \2 - 1 ; octave, key
ENDM

	enum tempo_cmd ; $da
tempo: MACRO
	db tempo_cmd
	bigdw \1 ; tempo
ENDM

	enum dutycycle_cmd ; $db
dutycycle: MACRO
	db dutycycle_cmd
	db \1 ; duty_cycle
ENDM

	enum intensity_cmd ; $dc
intensity: MACRO
	db intensity_cmd
	db \1 ; intensity
ENDM

	enum soundinput_cmd ; $dd
soundinput: MACRO
	db soundinput_cmd
	db \1 ; input
ENDM

	enum sound_duty_cmd ; $de
sound_duty: MACRO
	db sound_duty_cmd
	if _NARG == 4
	db \1 | (\2 << 2) | (\3 << 4) | (\4 << 6) ; duty sequence
	else
	db \1 ; LEGACY: Support for one-byte duty value
	endc
ENDM

	enum togglesfx_cmd ; $df
togglesfx: MACRO
	db togglesfx_cmd
ENDM

	enum slidepitchto_cmd ; $e0
slidepitchto: MACRO
	db slidepitchto_cmd
	db \1 - 1 ; duration
	dn \2, \3 ; octave, pitch
ENDM

	enum vibrato_cmd ; $e1
vibrato: MACRO
	db vibrato_cmd
	db \1 ; delay
	db \2 ; extent
ENDM

	enum togglenoise_cmd ; $e3
togglenoise: MACRO
	db togglenoise_cmd
	db \1 ; id
ENDM

	enum volume_cmd ; $e5
volume: MACRO
	db volume_cmd
	db \1 ; volume
ENDM

	enum tone_cmd ; $e6
tone: MACRO
	db tone_cmd
	bigdw \1 ; tone
ENDM

	enum sfxpriorityon_cmd ; $ec
sfxpriorityon: MACRO
	db sfxpriorityon_cmd
ENDM

	enum sfxpriorityoff_cmd ; $ed
sfxpriorityoff: MACRO
	db sfxpriorityoff_cmd
ENDM

	enum stereopanning_cmd ; $ef
stereopanning: MACRO
	db stereopanning_cmd
	db \1 ; tracks
ENDM

	enum sfxtogglenoise_cmd ; $f0
sfxtogglenoise: MACRO
	db sfxtogglenoise_cmd
	db \1 ; id
ENDM

	enum jumpchannel_cmd ; $fc
jumpchannel: MACRO
	db jumpchannel_cmd
	dw \1 ; address
ENDM

	enum loopchannel_cmd ; $fd
loopchannel: MACRO
	db loopchannel_cmd
	db \1 ; count
	dw \2 ; address
ENDM

	enum callchannel_cmd ; $fe
callchannel: MACRO
	db callchannel_cmd
	dw \1 ; address
ENDM

	enum endchannel_cmd ; $ff
endchannel: MACRO
	db endchannel_cmd
ENDM
