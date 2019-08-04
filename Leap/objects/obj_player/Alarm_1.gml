/// @description Explode

var sound = audio_play_sound(snd_pop,0,0)
audio_sound_gain(sound,global.master_volume*global.sound_volume*.8,0)
instance_destroy()
instance_create_layer(x,y,"Instances",obj_flash)
instance_create_layer(x,y,"Tail",obj_part_1)
instance_create_layer(x,y,"Tail",obj_part_2)
instance_create_layer(x,y,"Tail",obj_part_3)
instance_create_layer(x,y,"Tail",obj_part_4)
eyes = instance_create_layer(x,y,"Cursor",obj_part_eyes)
eyes.image_xscale = face
if tail{
	instance_create_layer(x,y,"Tail",obj_part_5)
}