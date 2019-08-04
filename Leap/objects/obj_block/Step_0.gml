
if !place_meeting(x,y+1,par_solid){ // Apply gravity
	if !place_meeting(x,y+1,obj_player){
		ysp += grav_speed
	}
	falling = true
}else{ // Apply Friction
	if xsp != 0{
		last_direction = sign(xsp)
	}
	if falling { // If previously falling
		//var sound = audio_play_sound(snd_box_fall,0,0)
		//audio_sound_gain(sound,global.master_volume*global.sound_volume,0)
	}
	falling = false
	xsp *= .9
}

if place_meeting(x,y,obj_ladder){
	ysp = -1.5
	xsp *= .8
	if !place_meeting(x,y-5,obj_ladder){
		y-=5
		ysp = -3
		xsp = 1 * last_direction
	}
}

if instance_number(obj_player) > 0{
	if obj_player.grabbed = id{
		if (abs((x) - (obj_player.x - obj_player.face*25)) > 3){
			xsp	= 2*sign(obj_player.x - obj_player.face*25 - x)
		}else{
			xsp = 0
		}
	}
}

y = round(y)
scr_collision()
