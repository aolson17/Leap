if !squish{
	sprite_index = spr_body_normal
}else{
	sprite_index = spr_body_squish
}
mask_index = spr_player_mask
image_speed = 0

holding = false

if prev_state != state{
	image_index = 0
}
prev_state = state

if !place_meeting(x,y+1,par_solid){ // If in air
	if ysp <= 0{
		state = jump
	}else{
		state = fall
	}
}else{ // If on ground
	
	if xsp = 0 && move = 0{
		state = stand_grab
	}
}

face = sign(x-grabbed.x)






