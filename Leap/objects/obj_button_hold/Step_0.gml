




if ((distance_to_object(obj_player) <= 1 && obj_player.y < y-6)||(distance_to_object(obj_tail) <= 1 && obj_tail.y < y-12)) && image_index = 0{
	image_index = 1
	instance_destroy(obj_blue_block_filled)
	instance_destroy(obj_blue_block_lslope_filled)
	instance_destroy(obj_blue_block_rslope_filled)
}


if !((distance_to_object(obj_player) <= 1 && obj_player.y < y-6)||(distance_to_object(obj_tail) <= 1 && obj_tail.y < y-12)) && image_index = 1{
	image_index = 0
	instance_destroy(obj_blue_block)
	instance_destroy(obj_blue_block_lslope)
	instance_destroy(obj_blue_block_rslope)
}



