/// @description End Game or Return to Menu

if room = rm_menu{
	game_end()
}else{
	var transition = instance_create_layer(x,y,"Instances",obj_transition)
	transition.room_target = rm_menu
}