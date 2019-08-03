
if state = prepare{
	draw_sprite_ext(spr_tail_jump,tail_index,x,y-6,face,1,0,c_white,image_alpha)
	
	draw_sprite_ext(spr_body_squish,0,x,y-5,face,1,0,c_white,image_alpha)
	
	draw_sprite_ext(spr_eyes,eye_index,x,y-5,face,1,0,c_white,image_alpha)
}else{
	if squish{
		y_offset = 1
	}else{
		y_offset = 0
	}
	draw_sprite_ext(sprite_index,image_index,x,y+y_offset,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	
	draw_sprite_ext(spr_eyes,eye_index,x,y+y_offset,face,1,0,c_white,image_alpha)
}

if floor(image_index) = 0{
	image_speed = 0
	image_index = 0
		
	if irandom(300)=1{ // Blick Randomly
		image_index = 1
	}
}else{
	image_speed = .5
}

if tail && state != prepare{
	x_offset = 5 * -face
	y_offset = 1

	draw_sprite_ext(spr_tail_move,tail_index,x+x_offset,y+y_offset,face,1,0,c_white,image_alpha)
}

if state = stand || state = run{
	eye_index = 1
	
	if !collision_point(x+face*8,y+10,par_solid,true,true){
		eye_index = 0
	}
}else if state = fall{
	eye_index = 0
}
