
if instance_number(obj_block) > 0{
	if state = stand || state = run{
		if tail && grabbed = false{
			if distance_to_object(obj_block) < 25 && abs(instance_nearest(x,y,obj_block).y - y) < 3{
				draw_set_halign(fa_center)
				scr_draw_outline(x,y - 20,"Grab",c_white,obj_control.dark,1)
				draw_set_halign(fa_left)
				
				if obj_control.use_key_pressed{
					grabbed = instance_nearest(x,y,obj_block)
					state = stand_grab
				}
			}
		}
	}else if state = stand_grab || state = run_grab{
		if !(distance_to_object(obj_block) < 25 && abs(instance_nearest(x,y,obj_block).y - y) < 3) || obj_control.use_key_pressed{
			grabbed = false
			state = stand
		}
	}
}

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
	
	if state != run_grab{
		draw_sprite_ext(spr_eyes,eye_index,x,y+y_offset,face,1,0,c_white,image_alpha)
	}else{
		draw_sprite_ext(spr_eyes,5,x,y+y_offset,face,1,0,c_white,image_alpha)
	}
}

if tail && state != prepare && grabbed = false{
	x_offset = 5 * -face
	y_offset = 1
	
	draw_sprite_ext(spr_tail_move,tail_index,x+x_offset,y+y_offset,face,1,0,c_white,image_alpha)
}else if tail && state != prepare && grabbed != false{
	x_offset = 13 * -face
	y_offset = 1
	
	draw_sprite_ext(spr_tail_pull,tail_index,x+x_offset,y+y_offset,face,1,0,c_white,image_alpha)
}

if state = stand || state = run || state = stand_grab{
	eye_index = 1
	
	if !collision_point(x+face*8,y+10,par_solid,true,true){
		eye_index = 0
	}
}else if state = fall{
	eye_index = 0
}

if place_meeting(x,y,obj_ladder){
	eye_index = 2
}
