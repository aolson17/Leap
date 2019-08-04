

if instance_number(target)>0{
	if target != obj_win{
		x = target.x//lerp(x,target.x,spd_factor)
		y = target.y//lerp(y,target.y,spd_factor)
	}else{
		x = lerp(x,target.x,spd_factor)
		y = lerp(y,target.y+66,spd_factor)
	}
	if room = A_Winner_Is_You{
		if target.y > 290 && target = obj_player{
			target = obj_win
		}
		if target = obj_win && obj_player.y <= 290{
			target = obj_player
		}
	}
}

camera_set_view_pos(camera,x-width/2, y-height/2)
//camera_set_view_pos(camera,x-width/2, y-height/2)