sprite_index = spr_body_normal
mask_index = spr_player_mask

holding = false

if prev_state != state{
	image_index = 0
	image_speed = 0
	eye_index = 4
}
prev_state = state

eye_index = clamp(eye_index,4,5)

if !place_meeting(x,y+1,par_solid){ // If in air
	if ysp <= 0{
		state = jump
	}else{
		state = fall
	}
}else{ // If on ground
	
}


