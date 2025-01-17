Music_NewBarkTown:
	channel_count 3
	channel 1, Music_NewBarkTown_Ch1
	channel 2, Music_NewBarkTown_Ch2
	channel 3, Music_NewBarkTown_Ch3

Music_NewBarkTown_Ch1_sub_0:
	note F_, 4
	rest 8
	note F_, 1
	rest 1
	note F_, 1
	rest 1
	note F_, 2
	rest 2
	note F_, 8
	note F_, 2
	rest 2
	sound_ret
Music_NewBarkTown_Ch1_sub_1:
	octave 2
	note C_, 4
	rest 8
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 2
	rest 2
	note C_, 8
	note E_, 2
	rest 2
	sound_ret
Music_NewBarkTown_Ch1_sub_2:
	note G_, 4
	rest 8
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 2
	rest 2
	note G_, 8
	note G_, 2
	sound_ret
Music_NewBarkTown_Ch1_sub_3:
	note C_, 4
	rest 8
	note C_, 1
	rest 1
	note C_, 1
	rest 1
	note C_, 2
	rest 2
	note C_, 8
	sound_ret
Music_NewBarkTown_Ch1::
.loop
	tempo 187
	volume 7, 7
	stereo_panning TRUE, TRUE
	vibrato 18, 2, 3
	note_type 6, 6, 7
	duty_cycle 2
	sound_call Music_NewBarkTown_Ch1_sub_1
	note C#, 4
	rest 8
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note C#, 2
	rest 2
	note C#, 8
	note E_, 2
	rest 2
	note D_, 4
	rest 8
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 2
	rest 2
	note C#, 8
	note C#, 2
	rest 2
	note C_, 4
	rest 8
	octave 1
	note B_, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 2
	rest 2
	note B_, 8
	note B_, 2
	rest 2
	octave 2
	sound_call Music_NewBarkTown_Ch1_sub_3
	note E_, 2
	rest 2
	octave 1
	note A_, 4
	rest 8
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	note G#, 2
	rest 2
	note G#, 8
	octave 2
	note C_, 2
	rest 2
	note D_, 4
	rest 8
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note F#, 2
	rest 2
	note F#, 8
	note D_, 2
	rest 2
	note G_, 4
	rest 8
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	octave 1
	note G_, 2
	rest 2
	note G_, 8
	note B_, 4
	octave 3
	stereo_panning FALSE, TRUE
	note_type 6, 6, 7
	duty_cycle 1
	note E_, 8
	note G_, 4
	note A_, 8
	octave 4
	note C_, 12
	octave 3
	note D#, 8
	note F#, 4
	note A_, 8
	octave 4
	note D#, 12
	octave 3
	note E_, 8
	note G_, 4
	note A_, 8
	octave 4
	note C_, 4
	octave 3
	note G_, 4
	note E_, 4
	note G_, 4
	octave 4
	note C_, 4
	note D_, 4
	note E_, 8
	octave 3
	note C_, 4
	note G_, 4
	note A#, 4
	note A_, 8
	rest 16
	rest 4
	note A_, 4
	note G_, 8
	rest 16
	rest 4
	note D_, 4
	note F_, 8
	rest 8
	octave 4
	note C_, 8
	octave 3
	note G_, 8
	rest 16
	rest 8
	octave 4
	note D_, 8
	note_type 6, 6, 7
	duty_cycle 2
	stereo_panning TRUE, TRUE
	sound_call Music_NewBarkTown_Ch1_sub_1
	octave 1
	note A#, 4
	rest 8
	note A#, 1
	rest 1
	note A#, 1
	rest 1
	note A#, 2
	rest 2
	note A#, 8
	octave 2
	note E_, 2
	rest 2
	sound_call Music_NewBarkTown_Ch1_sub_0
	sound_call Music_NewBarkTown_Ch1_sub_0
	sound_call Music_NewBarkTown_Ch1_sub_2
	rest 2
	sound_call Music_NewBarkTown_Ch1_sub_0
	sound_call Music_NewBarkTown_Ch1_sub_3
	note C_, 2
	rest 2
	sound_call Music_NewBarkTown_Ch1_sub_2
	rest 2
	sound_loop 0, .loop
Music_NewBarkTown_Ch2_sub_0:
	rest 1
	octave 3
	note F_, 1
	rest 1
	note A_, 2
	note F_, 1
	rest 1
	sound_ret
Music_NewBarkTown_Ch2_sub_1:
	rest 1
	octave 4
	note C_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	sound_ret
Music_NewBarkTown_Ch2_sub_2:
	note G_, 1
	octave 5
	note E_, 1
	note C_, 1
	octave 4
	note G_, 1
	note E_, 1
	octave 5
	note D_, 1
	sound_ret
Music_NewBarkTown_Ch2_sub_3:
	note G_, 2
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	octave 4
	note C_, 4
	note D_, 2
	note E_, 2
	sound_ret
Music_NewBarkTown_Ch2::
.loop
	stereo_panning FALSE, TRUE
	vibrato 18, 2, 3
	note_type 12, 6, 7
	duty_cycle 0
	octave 4
	note C_, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note G_, 2
	note E_, 1
	sound_call Music_NewBarkTown_Ch2_sub_1
	note G_, 2
	note E_, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note A_, 2
	note C#, 1
	rest 1
	octave 4
	note C#, 1
	rest 1
	octave 3
	note E_, 1
	rest 1
	note G_, 2
	note C#, 1
	rest 1
	octave 4
	note D_, 1
	sound_call Music_NewBarkTown_Ch2_sub_0
	octave 4
	note C#, 1
	sound_call Music_NewBarkTown_Ch2_sub_0
	octave 4
	note C_, 1
	sound_call Music_NewBarkTown_Ch2_sub_0
	note B_, 1
	rest 1
	note F_, 1
	rest 1
	note G#, 2
	note F_, 1
	sound_call Music_NewBarkTown_Ch2_sub_1
	note G_, 2
	note E_, 1
	sound_call Music_NewBarkTown_Ch2_sub_1
	note G#, 2
	note E_, 1
	sound_call Music_NewBarkTown_Ch2_sub_1
	note A_, 2
	note E_, 1
	rest 1
	octave 4
	note E_, 1
	rest 1
	octave 3
	note G#, 1
	rest 1
	octave 4
	note C_, 2
	octave 3
	note G#, 1
	rest 1
	octave 4
	note D_, 1
	sound_call Music_NewBarkTown_Ch2_sub_0
	octave 4
	note D_, 1
	sound_call Music_NewBarkTown_Ch2_sub_0
	octave 4
	note D_, 1
	rest 1
	note C_, 1
	rest 1
	octave 3
	note G_, 2
	octave 4
	note D_, 1
	rest 1
	octave 3
	note G_, 1
	rest 1
	note B_, 1
	rest 1
	octave 4
	note D_, 2
	octave 3
	note G#, 1
	rest 1
	stereo_panning TRUE, FALSE
	note_type 12, 7, 7
	duty_cycle 1
	sound_call Music_NewBarkTown_Ch2_sub_3
	octave 3
	note G_, 2
	note A_, 4
	octave 4
	note D_, 2
	note C_, 10
	octave 3
	sound_call Music_NewBarkTown_Ch2_sub_3
	note G_, 2
	octave 5
	note C_, 4
	note D_, 2
	note C_, 4
	octave 4
	note F_, 2
	note E_, 2
	note D_, 2
	note C_, 4
	octave 3
	note G_, 2
	octave 4
	note C_, 4
	note D_, 4
	note C_, 6
	octave 3
	note G_, 2
	octave 4
	note D_, 4
	note C_, 4
	octave 3
	note G_, 2
	note A_, 4
	octave 4
	note C_, 4
	note A_, 4
	note F_, 4
	octave 3
	note B_, 4
	octave 4
	note D_, 4
	note B_, 4
	note A_, 4
	stereo_panning FALSE, TRUE
	note_type 12, 4, 7
	duty_cycle 0
	octave 5
	note G_, 1
	note E_, 1
	note C_, 1
	octave 4
	sound_call Music_NewBarkTown_Ch2_sub_2
	note C_, 1
	octave 4
	note G_, 1
	note C_, 1
	octave 5
	note C_, 1
	octave 4
	note G_, 1
	note E_, 1
	note C_, 1
	octave 5
	note G_, 1
	note E_, 1
	octave 4
	note A#, 1
	sound_call Music_NewBarkTown_Ch2_sub_2
	octave 4
	note A#, 1
	note G_, 1
	note C_, 1
	note A#, 1
	note G#, 1
	note E_, 1
	note C_, 1
	octave 5
	note A_, 1
	note F_, 1
	note C_, 1
	octave 4
	note A_, 1
	octave 5
	note F_, 1
	note D_, 1
	octave 4
	note A_, 1
	note F_, 1
	octave 5
	note C#, 1
	octave 4
	note A_, 1
	note F_, 1
	note D_, 1
	note A_, 1
	note F_, 1
	note D_, 1
	octave 6
	note C_, 1
	note D_, 1
	note C_, 1
	octave 5
	note G#, 1
	note F_, 1
	note D_, 1
	note C_, 1
	octave 4
	note G#, 1
	note F_, 1
	octave 3
	note_type 12, 4, 0
	note G#, 4
	note F_, 4
	note C_, 4
	note D_, 2
	note E_, 2
	note E_, 2
	note C_, 6
	note D_, 4
	note D#, 2
	note D_, 2
	note C_, 2
	octave 2
	note G#, 6
	octave 3
	note F_, 16
	note G_, 4
	note F_, 4
	note D_, 4
	octave 2
	note B_, 4
	sound_loop 0, .loop
Music_NewBarkTown_Ch3_sub_0:
	octave 4
	note G_, 4
	octave 5
	note C_, 4
	octave 4
	note B_, 2
	octave 5
	note C_, 4
	sound_ret
Music_NewBarkTown_Ch3::
.loop
	stereo_panning TRUE, FALSE
	note_type 12, 1, 0
	vibrato 22, 2, 3
	sound_call Music_NewBarkTown_Ch3_sub_0
	note D_, 2
	note E_, 4
	octave 4
	note G#, 2
	note A_, 4
	note A#, 6
	note A_, 4
	octave 5
	note D_, 4
	note C#, 2
	note D_, 4
	note E_, 2
	note F_, 4
	octave 4
	note F_, 2
	note G_, 4
	note G#, 6
	octave 5
	note D_, 4
	note C_, 4
	octave 4
	note G_, 2
	octave 5
	note C_, 6
	octave 4
	note B_, 4
	note A_, 4
	octave 5
	note D_, 4
	note D#, 2
	note E_, 6
	note F_, 4
	octave 4
	note A_, 4
	octave 5
	note C_, 4
	octave 4
	note B_, 4
	octave 5
	note C_, 4
	octave 4
	note A_, 4
	note G#, 4
	stereo_panning TRUE, TRUE
	note_type 12, 6, 0
	octave 3
	note C_, 4
	note C_, 2
	rest 4
	note C_, 2
	note D_, 2
	note E_, 2
	note D#, 4
	note D#, 2
	rest 4
	note A_, 2
	note G_, 2
	note D#, 2
	note C_, 4
	note C_, 2
	rest 4
	note C_, 2
	note D_, 2
	note E_, 2
	note G_, 4
	note G_, 2
	rest 4
	note C_, 6
	note F_, 2
	note C_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
	note C_, 2
	note E_, 2
	note C_, 2
	note E_, 2
	note A_, 2
	octave 4
	note C_, 2
	octave 3
	note A_, 2
	note E_, 2
	note C_, 2
	note F_, 2
	note D_, 2
	note F_, 2
	note A_, 2
	octave 4
	note D_, 2
	note F_, 2
	note D_, 2
	octave 3
	note A_, 2
	note G_, 2
	note D_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	note D_, 2
	note B_, 2
	note A_, 2
	stereo_panning TRUE, FALSE
	sound_call Music_NewBarkTown_Ch3_sub_0
	note A_, 2
	note G_, 4
	note E_, 4
	octave 4
	note A#, 4
	note G#, 4
	note A_, 4
	octave 5
	note D_, 4
	note C#, 2
	note D_, 4
	octave 6
	note C_, 2
	octave 5
	note G#, 4
	note F_, 4
	note_type 12, 2, 5
	note C_, 4
	note D_, 4
	note E_, 4
	note F_, 2
	note E_, 2
	note C_, 2
	octave 4
	note G_, 6
	octave 5
	note D_, 4
	note D#, 2
	note D_, 2
	note C_, 2
	octave 4
	note G#, 6
	octave 5
	note C_, 16
	note C_, 16
	sound_loop 0, .loop