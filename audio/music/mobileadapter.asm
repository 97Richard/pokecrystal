INCLUDE "constants/music_common.inc"


SECTION "audio/music/mobileadapter.asm", ROMX

Music_MobileAdapter::
	musicheader 4, 1, Music_MobileAdapter_Ch1
	musicheader 1, 2, Music_MobileAdapter_Ch2
	musicheader 1, 3, Music_MobileAdapter_Ch3
	musicheader 1, 4, Music_MobileAdapter_Ch4

Music_MobileAdapter_Ch1:
	tempo 132
	volume $77
	tone $0001
	stereopanning $f
	dutycycle $2
	notetype $c, $84
	note __, 2
	note __, 6
	octave 3
	note G_, 1
	octave 4
	note D_, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C#, 4
.mainloop:
	callchannel .sub1
	note D_, 1
	note C#, 1
	note D_, 2
	octave 3
	note A_, 1
	note G_, 1
	note A_, 2
	note F#, 1
	note E_, 1
	note F#, 2
	note D_, 1
	note C#, 1
	note D_, 2
	callchannel .sub1
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note D_, 1
	note F#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	intensity $94
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 4
	octave 5
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	note C#, 1
	note __, 1
	octave 4
	note C#, 8
	intensity $92
	note F#, 1
	note G_, 1
	note A_, 2
	note G#, 2
	note A_, 2
	intensity $94
	note E_, 3
	octave 3
	note A_, 3
	note E_, 4
	octave 4
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	octave 3
	note B_, 8
	intensity $92
	octave 4
	note B_, 1
	octave 5
	note C_, 1
	note C#, 2
	octave 4
	note B_, 2
	note A_, 2
	octave 5
	note C#, 3
	intensity $94
	octave 4
	note C#, 3
	octave 3
	note A_, 4
	octave 4
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	octave 3
	note F#, 10
	octave 4
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 3
	note D_, 10
	octave 4
	note A_, 8
	intensity $a1
	octave 3
	note C#, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	note C#, 1
	note D_, 2
	octave 3
	note A_, 1
	note G_, 1
	note A_, 2
	intensity $94
	note F#, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 4
	intensity $77
	callchannel Music_MobileAdapter_Ch3.sub5
	loopchannel 0, .mainloop

.sub1:
	intensity $94
	octave 4
	note F#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F#, 2
	octave 3
	note F#, 10
	octave 4
	note G_, 1
	note __, 1
	note G_, 1
	note __, 1
	note G_, 2
	octave 3
	note G_, 8
	intensity $a1
	note B_, 1
	octave 4
	note D_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	note A_, 1
	note E_, 1
	note F#, 1
	note G_, 1
	note F#, 1
	note E_, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	endchannel

Music_MobileAdapter_Ch2:
	notetype $c, $c1
	vibrato $10, $23
	dutycycle $2
	octave 3
	note G_, 1
	note B_, 1
	octave 4
	note D_, 1
	note C#, 1
	note D_, 2
	octave 3
	note B_, 1
	note A#, 1
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	intensity $b4
	octave 4
	note D_, 1
	note F#, 1
.mainloop:
	callchannel .sub1
	note A_, 4
	note G_, 4
	note A_, 4
	note E_, 4
	note F#, 12
	note __, 2
	note D_, 1
	note F#, 1
	callchannel .sub1
	octave 5
	note C#, 4
	octave 4
	note A_, 4
	octave 5
	note F#, 4
	note E_, 4
	note D_, 12
	note __, 2
	note C#, 1
	note D_, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 1
	note G_, 4
	note F#, 2
	note E_, 2
	note D_, 2
	note C#, 9
	intensity $a2
	octave 3
	note E_, 3
	note C#, 2
	intensity $b4
	octave 5
	note D_, 1
	note C#, 1
	octave 4
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	octave 5
	note C#, 4
	note D_, 2
	note E_, 2
	note F#, 2
	note E_, 9
	intensity $a2
	octave 3
	note A_, 3
	note E_, 2
	intensity $b4
	octave 5
	note F#, 1
	note G_, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note G_, 4
	note F#, 2
	note E_, 2
	note D_, 1
	note C#, 1
	octave 4
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	octave 5
	note G_, 4
	note F#, 2
	note D_, 2
	octave 4
	note A#, 1
	note B_, 1
	octave 5
	note C#, 12
	note E_, 4
	note D_, 16
	dutycycle $1
	intensity $71
	callchannel .sub2
	octave 4
	note E_, 1
	note A_, 1
	octave 5
	note C#, 1
	note E_, 1
	callchannel .sub2
	note __, 2
	dutycycle $2
	intensity $b4
	octave 4
	note D_, 1
	note F#, 1
	loopchannel 0, .mainloop

.sub1:
	note A_, 1
	note __, 1
	note A_, 1
	note __, 1
	note A_, 2
	octave 5
	note D_, 4
	note C#, 2
	octave 4
	note B_, 2
	note G_, 1
	note A_, 1
	note B_, 1
	note __, 1
	note B_, 1
	note __, 1
	note B_, 2
	octave 5
	note E_, 4
	note D_, 2
	note C#, 2
	octave 4
	note B_, 2
	endchannel

.sub2:
	octave 5
	note F#, 1
	note D_, 1
	octave 4
	note A_, 1
	note F#, 1
	octave 5
	note F#, 1
	note D_, 1
	octave 4
	note A_, 1
	note F#, 1
	octave 5
	note F#, 1
	note D_, 1
	octave 4
	note A#, 1
	note F#, 1
	octave 5
	note F#, 1
	note D_, 1
	octave 4
	note A#, 1
	note F#, 1
	octave 5
	note G_, 1
	note D_, 1
	octave 4
	note B_, 1
	note G_, 1
	octave 5
	note G_, 1
	note D_, 1
	octave 4
	note B_, 1
	note G_, 1
	octave 5
	note C#, 4
	endchannel

Music_MobileAdapter_Ch3:
	notetype $c, $14
	note __, 2
	octave 3
	note G_, 1
	note __, 1
	note B_, 1
	note __, 1
	note G_, 1
	note __, 1
	note B_, 1
	note G_, 1
	note A_, 1
	note __, 1
	note E_, 1
	note __, 1
	note A_, 4
.mainloop:
	callchannel .sub1
	callchannel .sub2
	callchannel .sub3
	note D_, 1
	note __, 1
	octave 2
	note A_, 1
	note __, 1
	note B_, 1
	note __, 1
	octave 3
	note C#, 1
	note __, 1
	callchannel .sub1
	callchannel .sub2
	callchannel .sub3
	note D_, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 4
	callchannel .sub2
	callchannel .sub4
	note B_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 1
	note B_, 1
	note __, 1
	callchannel .sub4
	octave 3
	note D_, 1
	note __, 1
	note A_, 1
	note __, 1
	note D_, 1
	note __, 1
	note A_, 1
	note __, 1
	note C#, 1
	note __, 1
	note A_, 1
	note __, 1
	note C#, 1
	note __, 1
	note A_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 2
	note A#, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	octave 2
	note A#, 1
	note __, 1
	octave 3
	note G_, 1
	note __, 1
	callchannel .sub2
	note D_, 1
	note __, 1
	note A_, 1
	note __, 1
	note D_, 1
	note __, 1
	note A_, 1
	note __, 1
	note F#, 2
	octave 2
	note A_, 2
	octave 3
	note D_, 4
	callchannel .sub5
	loopchannel 0, .mainloop

.sub1:
.sub1loop1:
	octave 3
	note D_, 1
	note __, 1
	note A_, 1
	note __, 1
	loopchannel 4, .sub1loop1
.sub1loop2:
	octave 2
	note G_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	loopchannel 4, .sub1loop2
	endchannel

.sub2:
.sub2loop1:
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note E_, 1
	note __, 1
	loopchannel 4, .sub2loop1
	endchannel

.sub3:
	note D_, 1
	note __, 1
	note A_, 1
	note __, 1
	note D_, 1
	note __, 1
	note A_, 1
	note __, 1
	endchannel

.sub4:
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note C#, 1
	note __, 1
	note E_, 1
	note __, 1
	note C#, 1
	note __, 1
	octave 2
	note A_, 1
	octave 3
	note E_, 2
	note __, 1
	octave 2
	note A_, 4
	endchannel

.sub5:
.sub5loop1:
	octave 2
	note A_, 1
	note __, 1
	octave 3
	note D_, 2
	octave 2
	note A_, 1
	octave 3
	note D_, 3
	octave 2
	note A#, 1
	note __, 1
	octave 3
	note D_, 2
	octave 2
	note A#, 1
	octave 3
	note D_, 3
	octave 2
	note B_, 1
	note __, 1
	octave 3
	note D_, 2
	octave 2
	note B_, 1
	octave 3
	note D_, 3
	octave 2
	note A_, 2
	note __, 6
	loopchannel 2, .sub5loop1
	endchannel

Music_MobileAdapter_Ch4:
	togglenoise $3
	stereopanning $f0
	notetype $c
	note __, 2
	note __, 10
	note D_, 2
	note D_, 2
	note D_, 1
	note D_, 1
.mainloop:
	callchannel .sub1
	callchannel .sub1
.loop1:
	note __, 4
	note D_, 8
	note D_, 8
	note D_, 4
	note D_, 1
	note D_, 3
	note D_, 4
	loopchannel 2, .loop1
.loop2:
	note __, 4
	note D_, 4
	loopchannel 11, .loop2
	note __, 2
	note D_, 2
	note D_, 2
	note D_, 1
	note D_, 1
	note __, 4
	note D_, 8
	note D_, 8
	note D_, 6
	note D_, 2
	note D_, 2
	note D_, 1
	note D_, 1
	loopchannel 0, .mainloop

.sub1:
.sub1loop1:
	note __, 4
	note D_, 4
	loopchannel 7, .sub1loop1
	note __, 2
	note D_, 2
	note D_, 2
	note D_, 1
	note D_, 1
	endchannel
