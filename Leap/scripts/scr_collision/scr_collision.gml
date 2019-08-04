
if place_meeting((x+xsp),(y),par_solid){
	var col = instance_place((x+xsp),(y),par_solid)
	var limit = abs(xsp)
	
	var col2 = instance_place((x+xsp),(y),obj_block)
	
	if object_index = obj_player && col2 != noone && col2.object_index = obj_block{
		col2.xsp += .5*face
	}
	
	while(!place_meeting((x+sign(xsp)),(y),par_solid) && limit >= 0){
		x += sign(xsp)
		limit -= abs(xsp)
	}
	if (object_index = obj_player && move = sign(xsp) && (state = run))||object_index = obj_block{
		// Step up
		while (!place_meeting((x+sign(xsp)),(y-step_size),par_solid) && limit > 0){
			y -= step_size
			ysp = 0
			while(!place_meeting((x+sign(xsp)),(y),par_solid) && abs(xsp) > 0 && limit > 0){
				x += sign(xsp)
				limit -= abs(sign(xsp))
			}
			
			
		}
	}else{
		xsp = 0
	}
	
	x = round(x)
}else{
	x += xsp
}
if place_meeting((x),(y+ysp),par_solid){
	var col = instance_place((x),(y+ysp),par_solid)
	var limit = abs(ysp)
	while(!place_meeting((x),(y+sign(ysp)),par_solid) && limit >= 0){
		y += sign(ysp)
		limit -= abs(sign(ysp))
	}
	if ysp > 0{ // If landing on ground
		y = round(y)
	}
	ysp = 0
}else{
	y += ysp
}

if place_meeting(x,y,par_solid){
	y--
}




