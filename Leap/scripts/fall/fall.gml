sprite_index = spr_body_normal
mask_index = spr_player_mask
image_speed = .2

if prev_state != state{
	image_index = 0
}
prev_state = state

grabbed = false

if !place_meeting(x,y+1,par_solid){ // If in air
	if image_index > image_number - 1{
		image_speed = 0
	}
	
	if ysp <= 0{
		state = jump
	}
}else{ // If on ground
	//var sound = audio_play_sound(snd_land,0,0)
	//audio_sound_gain(sound,global.master_volume*global.sound_volume,0)
	
	//if ysp < 1{
		squish = true
		alarm[0] = squish_frames
	//}
	
	if xsp = 0{
		state = stand
	}else {
		state = run
	}
	
	image_xscale = face
}

