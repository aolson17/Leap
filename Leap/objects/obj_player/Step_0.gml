
move = obj_control.right_key - obj_control.left_key

if state = prepare{
	tail_index = 0
	if obj_control.jump_key_released{
		ysp += -jump_speed
		jumping = true
		state = jump
		tail = false
		instance_create_layer(x,y,"tail",obj_tail)
	}
}else{
	tail_index += abs(tail_run_image_speed_factor*xsp)
}
eye_index += blink_speed

if place_meeting(x,y+1,par_solid){
	if state = die || state = prepare{
		move = 0
		move_speed = 0
		max_move_speed = 0
	}else {
		move_speed = run_speed
		max_move_speed = max_run_speed
	}
}else{
	move_speed = air_move_factor*run_speed
	max_move_speed = max_run_speed
}

if move = sign(xsp){ // If trying to move in the same direction as momentum
	if abs(xsp) <= max_move_speed{ // If not already over limit
		if abs(xsp) + move_speed > max_move_speed{ // If going to go over limit
			// Set to limit
			xsp = move * max_move_speed
		}else{
			xsp += move * move_speed
		}
	}
}else{
	xsp += move * move_speed
}

if !place_meeting(x,y+1,par_solid) && state != ladder{ // Apply gravity
	ysp += grav_speed
}else{ // If on ground or ladder
	
	if state = ladder{
		ysp = -1
	}else{
		if (move != sign(xsp) || abs(xsp) > max_move_speed){ // Apply friction
			if abs(xsp) - move_friction > 0{
				xsp -= sign(xsp)*move_friction
			}else{
				xsp = 0
			}
		}
	}
	
	jumping = false
	if state != die && tail{
		if obj_control.jump_key_pressed{ // Jump
			//ysp += -jump_speed
			//jumping = true
			//state = jump
			tail_index = 0
			state = prepare
			//var sound = audio_play_sound(snd_jump,0,0)
			//audio_sound_gain(sound,global.master_volume*global.sound_volume,0)
		}
	} 
	if state != die{
		if move != 0{ // Set the facing of the player
			face = move
		}
	}
}

if ysp > 0{
	jumping = false
}
if keyboard_check_released(vk_space) && jumping{ // Variable jumping
	ysp *= variable_jump_factor
	jumping = false
}

script_execute(state) // Manage which state is active
image_xscale = face
scr_collision()

x = round(x)
y = round(y)