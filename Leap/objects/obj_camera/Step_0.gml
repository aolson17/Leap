
if instance_number(target)>0{
	x = target.x//lerp(x,target.x,spd_factor)
	y = target.y//lerp(y,target.y,spd_factor)
}

camera_set_view_pos(camera,x-width/2, y-height/2)
//camera_set_view_pos(camera,x-width/2, y-height/2)