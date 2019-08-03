sprite_index = spr_body_stretch
mask_index = spr_player_mask
image_speed = .2

if prev_state != state{
	image_index = 0
	eye_index = 5
}
prev_state = state

eye_index = clamp(eye_index,5,7)

if !place_meeting(x,y+1,par_solid){ // If in air
	if image_index > image_number - 1{
		image_speed = 0
	}
	if ysp >= 0{
		state = fall
	}
}else{ // If on ground
	
	if xsp = 0{
		state = stand
	}else {
		state = run
	}
	
	image_xscale = face
}

