sprite_index = spr_body_burst
mask_index = spr_player_mask

holding = false

if prev_state != state{
	image_index = 0
	image_speed = 0.3
}
prev_state = state

if image_index > image_number - 1{
	if image_speed != 0{
		alarm[1] = 10
	}
	image_speed = 0
}


