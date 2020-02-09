INCLUDE "constants/music_common.inc"


SECTION "audio/music/battletowertheme.asm", ROMX

Music_BattleTowerTheme::
	musicheader 4, 1, Music_BattleTowerTheme_Ch1
	musicheader 1, 2, Music_BattleTowerTheme_Ch2
	musicheader 1, 3, Music_BattleTowerTheme_Ch3
	musicheader 1, 4, Music_BattleTowerTheme_Ch4

Music_BattleTowerTheme_Ch1:
	tempo 141
	volume $77
	tone $0001
	vibrato $12, $34
	stereopanning $f
	notetype $6, $94
.mainloop:
	note __, 16
	note __, 16
	note __, 12
	note __, 12
	dutycycle $2
	octave 3
	note C_, 2
	note E_, 2
	note G_, 4
	callchannel .sub1
	note G_, 2
	note __, 2
	note C_, 4
	note __, 4
	intensity $92
	note G_, 2
	note F_, 2
	note C_, 2
	note E_, 2
	note G_, 2
	octave 4
	note E_, 2
	note G_, 2
	note E_, 2
	octave 3
	note G_, 2
	note E_, 2
	callchannel .sub1
	note G_, 2
	note __, 2
	octave 2
	note A#, 4
	note __, 4
	intensity $92
	octave 3
	note G_, 2
	note D#, 2
	note C_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	note F_, 2
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
	intensity $93
	note D_, 2
	note __, 2
	note E_, 4
	note F_, 4
	note G_, 2
	note A_, 2
	note A#, 8
	octave 2
	note A#, 8
	octave 3
	note C_, 2
	note __, 2
	note D_, 4
	note E_, 4
	note F_, 2
	note G_, 2
	note A_, 8
	octave 2
	note A_, 8
	note A#, 2
	note __, 2
	octave 3
	note C_, 4
	note D_, 4
	note D#, 2
	note F_, 2
	note D#, 4
	note F_, 4
	note G_, 4
	note A#, 4
	octave 4
	note C_, 2
	note __, 2
	octave 3
	note F_, 4
	note __, 4
	octave 2
	note A_, 2
	octave 3
	note C_, 2
	note E_, 4
	note __, 4
	dutycycle $3
	note C_, 2
	note E_, 2
	note G_, 4
	note A_, 4
	note F_, 8
	note F_, 2
	note G_, 2
	note A_, 8
	note G_, 4
	note F_, 4
	note D_, 8
	note A#, 2
	note D_, 2
	note E_, 2
	note F_, 2
	note G_, 2
	note A_, 2
	note A#, 2
	octave 4
	note C_, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note D#, 2
	note F_, 4
	octave 3
	note F_, 8
	note C#, 2
	note D#, 2
	note F_, 8
	note G_, 4
	note F_, 4
	note F_, 4
	note C_, 8
	note G_, 2
	note F_, 2
	note E_, 8
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note G_, 2
	note E_, 2
	note C_, 4
	note F_, 8
	note C_, 2
	note F_, 2
	note A_, 8
	note A#, 4
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	note F_, 8
	note A#, 4
	octave 4
	note D_, 8
	octave 3
	note A#, 2
	note A_, 2
	note F_, 4
	note G#, 4
	note F_, 8
	note G#, 4
	note F_, 4
	note D#, 4
	note C#, 4
	note F_, 4
	intensity $94
	octave 4
	note C_, 4
	octave 3
	note E_, 6
	note __, 2
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 4
	note __, 12
	loopchannel 0, .mainloop

.sub1:
	intensity $94
	note A_, 2
	note __, 2
	note C_, 4
	note __, 4
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note C_, 4
	note F_, 4
	note __, 4
	note A_, 4
	endchannel

Music_BattleTowerTheme_Ch2:
	vibrato $12, $34
.mainloop:
	dutycycle $3
	notetype $6, $b8
	octave 3
	note F_, 2
	note __, 2
	octave 2
	note A_, 4
	note __, 4
	octave 3
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 2
	note A_, 4
	octave 3
	note F_, 4
	note __, 4
	octave 2
	note A_, 2
	note __, 2
	octave 3
	note F_, 2
	note __, 2
	octave 2
	note A_, 4
	note __, 4
	tone $0001
	note A_, 1
	note __, 1
	octave 3
	note C_, 1
	note __, 1
	note F_, 4
	note __, 4
	tone 0
	intensity $b7
	note G_, 2
	octave 4
	note C_, 2
	note E_, 4
	callchannel .sub1
	note A#, 4
	note __, 2
	note F_, 2
	notetype $c, $b7
	note C_, 12
	notetype $6, $b7
	callchannel .sub1
	notetype $c, $b7
	note A#, 2
	note __, 1
	note G_, 1
	note A_, 12
	note A#, 1
	note __, 1
	note A#, 4
	note G_, 1
	note A_, 1
	note A#, 4
	note D_, 4
	note A_, 1
	note __, 1
	note A_, 4
	note G_, 1
	note A_, 1
	note F_, 8
	note G_, 1
	note __, 1
	note G_, 4
	note A#, 1
	note A_, 1
	note A#, 4
	note D#, 4
	note F_, 1
	note __, 1
	note F_, 4
	note G_, 1
	note F_, 1
	note E_, 8
	stereopanning $f0
	dutycycle $2
	note F_, 6
	note A_, 1
	note A#, 1
	octave 5
	note C_, 4
	octave 4
	note A#, 2
	note A_, 2
	note A#, 16
	note A#, 6
	note G_, 1
	note A_, 1
	note A#, 4
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	note A_, 6
	note A#, 1
	note A_, 1
	note G_, 8
	note A_, 6
	note F_, 1
	note A_, 1
	octave 5
	note C_, 4
	note D_, 2
	note D#, 2
	note D_, 6
	note C_, 2
	octave 4
	note A#, 8
	octave 5
	note C#, 6
	note C_, 2
	octave 4
	note A#, 2
	note G#, 2
	note F_, 2
	note G#, 2
	note G_, 5
	note __, 1
	notetype $6, $b7
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 4
	note __, 4
	stereopanning $ff
	dutycycle $3
	octave 3
	note C_, 2
	note D_, 2
	note E_, 4
	loopchannel 0, .mainloop

.sub1:
	note F_, 2
	note __, 2
	note F_, 8
	note C_, 2
	note F_, 2
	octave 5
	note C_, 8
	octave 4
	note A#, 4
	note A_, 4
	endchannel

Music_BattleTowerTheme_Ch3:
	vibrato $12, $34
	notetype $6, $16
.mainloop:
	stereopanning $ff
	callchannel .sub1
	note C_, 2
	note __, 2
	note F_, 4
	note __, 4
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note C_, 1
	note __, 1
	note F_, 4
	note __, 4
	stereopanning $f0
	note C_, 8
	callchannel .sub1
	note C_, 2
	note __, 2
	note F_, 4
	note __, 4
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note E_, 4
	note C_, 4
	note __, 4
	note C_, 2
	note __, 2
	callchannel .sub1
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note D#, 4
	note __, 4
	octave 2
	note A#, 1
	note __, 1
	note A#, 1
	note __, 1
	octave 3
	note C_, 4
	note F_, 4
	note __, 4
	note C_, 1
	note __, 1
	note C_, 2
	octave 2
	note A#, 2
	note __, 2
	note A#, 4
	note F_, 4
	octave 3
	note F_, 1
	note __, 1
	note F_, 2
	octave 2
	note A#, 2
	note __, 2
	octave 3
	note D_, 2
	note __, 2
	note F_, 8
	note C_, 2
	note __, 2
	note C_, 4
	octave 2
	note F_, 4
	octave 3
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 2
	note A_, 2
	note __, 2
	octave 3
	note C_, 2
	note __, 2
	note F_, 8
	note D#, 2
	note __, 2
	note D#, 4
	octave 2
	note G_, 4
	octave 3
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 2
	note G_, 2
	note __, 2
	note A#, 2
	note __, 2
	octave 3
	note D#, 8
	note F_, 2
	note __, 2
	note C_, 4
	note __, 4
	note C_, 2
	octave 2
	note F_, 2
	note G_, 4
	note __, 4
	stereopanning $ff
	note G_, 2
	octave 3
	note C_, 2
	note E_, 4
	note F_, 4
	note C_, 8
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note A_, 4
	note C_, 6
	note __, 2
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note F_, 4
	note D_, 8
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note A#, 4
	note A_, 4
	note F_, 4
	note D_, 4
	note F_, 4
	note C#, 8
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note A#, 4
	note F_, 8
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C_, 4
	note F_, 8
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note G_, 4
	note C_, 4
	note D_, 4
	note E_, 4
	note F_, 4
	note C_, 8
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note A_, 4
	note C_, 8
	note F_, 2
	note __, 2
	note F_, 4
	octave 2
	note A#, 8
	octave 3
	note F_, 1
	note __, 1
	note F_, 1
	note __, 1
	note A#, 4
	octave 2
	note A#, 4
	octave 3
	note D_, 4
	note E_, 4
	note F_, 4
	octave 2
	note G#, 8
	octave 3
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note G#, 4
	octave 2
	note G#, 8
	octave 3
	note C#, 4
	note C_, 4
	note G_, 8
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note G_, 4
	note __, 12
	loopchannel 0, .mainloop

.sub1:
	octave 3
	note C_, 2
	note __, 2
	note F_, 4
	note __, 4
	note C_, 1
	note __, 1
	note C_, 1
	note __, 1
	note F_, 4
	note C_, 4
	note __, 4
	note C_, 2
	note __, 2
	endchannel

Music_BattleTowerTheme_Ch4:
	togglenoise $3
	notetype $c
.mainloop:
	callchannel .sub1
	note D_, 2
	note D_, 4
	note D_, 1
	note D_, 1
	note D_, 4
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
.loop1:
	callchannel .sub1
	callchannel .sub2
	loopchannel 2, .loop1
	callchannel .sub3
	callchannel .sub2
	callchannel .sub3
	note D_, 2
	note D_, 4
	note D_, 1
	note D_, 1
	note D_, 8
.loop2:
	callchannel .sub4
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	loopchannel 3, .loop2
	callchannel .sub4
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 1
	note D_, 1
	note D_, 4
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	loopchannel 0, .mainloop

.sub1:
	note D_, 2
	note D_, 4
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 4
	note D_, 1
	note D_, 1
	endchannel

.sub2:
	note D_, 2
	note D_, 4
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 1
	endchannel

.sub3:
	note D_, 2
	note D_, 4
	note D_, 1
	note D_, 1
	note D_, 2
	note D_, 2
	note D_, 2
	note D_, 1
	note D_, 1
	endchannel

.sub4:
	note D_, 2
	note C#, 2
	note D_, 2
	note D_, 1
	note C#, 1
	note D_, 2
	note C#, 2
	note D_, 2
	note D_, 1
	note C#, 1
	endchannel
