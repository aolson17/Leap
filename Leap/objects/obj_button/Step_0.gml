





if ((distance_to_object(obj_player) <= 1 && obj_player.y < y-6)||(distance_to_object(obj_tail) <= 1 && obj_tail.y < y-12)||(distance_to_object(obj_block) <= 1 && obj_block.y < y-8)) && image_index = 0{
	image_index = 1
	
	var sound = audio_play_sound(snd_button,0,0)
	audio_sound_gain(sound,global.master_volume*global.sound_volume*.8,0)

	filled = ds_list_create()
	
	with (obj_red_block_filled){
		ds_list_add(other.filled,id)
	}
	with (obj_red_block_lslope_filled){
		ds_list_add(other.filled,id)
	}
	with (obj_red_block_rslope_filled){
		ds_list_add(other.filled,id)
	}
	
	not_filled = ds_list_create()
	
	with (obj_red_block){
		ds_list_add(other.not_filled,id)
	}
	with (obj_red_block_lslope){
		ds_list_add(other.not_filled,id)
	}
	with (obj_red_block_rslope){
		ds_list_add(other.not_filled,id)
	}
	
	for (var i = 0; i < ds_list_size(filled);i++){
		instance_destroy(ds_list_find_value(filled,i))
	}
	
	ds_list_destroy(filled)
	
	for (var i = 0; i < ds_list_size(not_filled);i++){
		instance_destroy(ds_list_find_value(not_filled,i))
	}
	
	ds_list_destroy(not_filled)
}



