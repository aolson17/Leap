



if point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom){
	if mouse_check_button(mb_left){
		image_index = 2
		y_offset = 1
	}else{
		image_index = 1
		y_offset = 0
	}
	
	if mouse_check_button_released(mb_left){
		var transition = instance_create_layer(x,y,"Cursor",obj_transition)
		transition.room_target = room+1
	}
}else{
	image_index = 0
	y_offset = 0
}


