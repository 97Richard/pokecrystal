INCLUDE "constants/music_common.inc"


SECTION "audio/music/pokemoncenter.asm", ROMX

Music_PokemonCenter::
	musicheader 4, 1, Music_PokemonCenter_Ch1
	musicheader 1, 2, Music_PokemonCenter_Ch2
	musicheader 1, 3, Music_PokemonCenter_Ch3
	musicheader 1, 4, Music_PokemonCenter_Ch4

Music_PokemonCenter_Ch1:
	tempo 152
	volume $77
	dutycycle $2
	vibrato $a, $14
	tone $0001
.mainloop:
	stereopanning $f
	notetype $c, $83
	octave 3
	note F#, 2
	note F_, 2
	note F#, 2
	octave 4
	note D_, 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	octave 4
	note C#, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note F#, 2
	note F_, 2
	note F#, 2
	octave 4
	note D_, 4
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note A_, 2
	note E_, 2
	note A_, 2
	octave 4
	note C#, 4
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	notetype $c, $b4
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	stereopanning $f0
	note F#, 2
	note E_, 2
	note D_, 4
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 4
	note E_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 4
	note C#, 2
	note D_, 2
	note E_, 2
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note A_, 8
	octave 4
	note D_, 2
	note C#, 2
	octave 3
	note B_, 4
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note C#, 4
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	note D_, 2
	note E_, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 4
	note G_, 2
	note A_, 2
	note B_, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note F#, 2
	note G_, 2
	loopchannel 0, .mainloop

Music_PokemonCenter_Ch2:
	vibrato $10, $25
.mainloop:
	stereopanning $ff
	callchannel .sub1
	stereopanning $f
	notetype $c, $a5
	octave 3
	note A_, 4
	note E_, 4
	stereopanning $ff
	callchannel .sub2
	note D_, 2
	note F#, 6
	stereopanning $f
	notetype $c, $a5
	octave 3
	note A_, 4
	note E_, 4
	stereopanning $ff
	callchannel .sub1
	stereopanning $f
	notetype $c, $a5
	octave 3
	note A_, 4
	note E_, 4
	stereopanning $ff
	callchannel .sub2
	note D_, 8
	stereopanning $f
	notetype $c, $a5
	octave 3
	note D_, 4
	note E_, 4
	notetype $c, $c6
	octave 4
	note F#, 8
	note A_, 8
	note G_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	note E_, 8
	note C#, 8
	note E_, 8
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 8
	note F#, 8
	note A_, 8
	note G_, 2
	note F#, 2
	note G_, 2
	note A_, 2
	note B_, 8
	note A_, 4
	note G_, 2
	note F#, 2
	note G_, 8
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D_, 8
	loopchannel 0, .mainloop

.sub1:
	dutycycle $2
	notetype $c, $c2
	octave 4
	note D_, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	intensity $c3
	note A_, 4
	note G_, 4
	note F#, 2
	note E_, 2
	note C#, 6
	endchannel

.sub2:
	notetype $c, $c2
	octave 4
	note C#, 2
	octave 3
	note A_, 2
	octave 4
	note C#, 2
	intensity $c3
	note F#, 4
	note E_, 4
	note C#, 2
	endchannel

Music_PokemonCenter_Ch3:
	notetype $c, $28
.mainloop:
	stereopanning $f0
	octave 3
	note D_, 1
	note __, 5
	note F#, 1
	note __, 3
	note F#, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 1
	note __, 1
	callchannel .sub1
	callchannel .sub2
	note F#, 1
	note __, 5
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	note D_, 1
	note __, 5
	note F#, 1
	note __, 3
	note F#, 1
	note __, 1
	note G_, 1
	note __, 1
	note F#, 1
	note __, 1
	callchannel .sub1
	callchannel .sub2
	note D_, 1
	note __, 5
	note F#, 1
	note __, 3
	note F#, 1
	note __, 1
	note D_, 1
	note __, 1
	note G_, 1
	note __, 1
	stereopanning $ff
	callchannel .sub3
	note G_, 1
	note __, 5
	note B_, 1
	note __, 3
	note B_, 1
	note __, 1
	note G_, 1
	note __, 1
	note B_, 1
	note __, 1
	note E_, 1
	note __, 5
	note G_, 1
	note __, 3
	note G_, 1
	note __, 3
	note G_, 1
	note __, 1
	note F#, 1
	note __, 5
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
	note G#, 1
	note __, 1
	note A_, 1
	note __, 1
	callchannel .sub3
	note G_, 1
	note __, 5
	note B_, 1
	note __, 3
	note B_, 1
	note __, 3
	note B_, 1
	note __, 1
	note E_, 1
	note __, 5
	note G_, 1
	note __, 3
	note G_, 1
	note __, 3
	note G_, 1
	note __, 1
	note F#, 1
	note __, 5
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	note E_, 1
	note __, 1
	loopchannel 0, .mainloop

.sub1:
	note E_, 1
	note __, 5
	note A_, 1
	note __, 3
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
	endchannel

.sub2:
	note E_, 1
	note __, 5
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
	note G_, 1
	note __, 1
	note A_, 1
	note __, 1
	endchannel

.sub3:
	note F#, 1
	note __, 5
	note A_, 1
	note __, 3
	note A_, 1
	note __, 3
	note A_, 1
	note __, 1
	endchannel

Music_PokemonCenter_Ch4:
	togglenoise $3
	notetype $c
	stereopanning $ff
.mainloop:
	note G_, 6
	note G_, 4
	note G_, 2
	note G_, 2
	note G_, 2
	loopchannel 0, .mainloop
