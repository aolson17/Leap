sprite_index = spr_body_normal
mask_index = spr_player_mask

holding = false

if prev_state != state{
	image_index = 0
	image_speed = 0
}
prev_state = state

if !place_meeting(x,y+1,par_solid){ // If in air
	if ysp <= 0{
		state = jump
	}else{
		state = fall
	}
}else{ // If on ground
	if floor(image_index) = 0{
		image_speed = 0
		image_index = 0
		
		if irandom(300)=1{ // Blick Randomly
			image_index = 1
		}
	}else{
		image_speed = .5
	}
	
	x = round(x)
	y = round(y)
	
	if xsp != 0{
		state = run
	}
}


