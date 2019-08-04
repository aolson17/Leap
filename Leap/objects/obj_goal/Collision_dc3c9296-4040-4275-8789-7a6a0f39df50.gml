/// @description Advance To Next Room


//var sound = audio_play_sound(snd_win,0,0)
//audio_sound_gain(sound,global.master_volume*global.sound_volume,0)

if !won{
	var transition = instance_create_layer(x,y,"Cursor",obj_transition)
	transition.room_target = room+1
	won = true
	
	var sound = audio_play_sound(snd_win,0,0)
	audio_sound_gain(sound,global.master_volume*global.sound_volume*1.2,0)
	audio_sound_gain(sound,0,3000)
}