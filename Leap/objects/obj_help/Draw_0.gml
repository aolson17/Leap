



draw_self()

scr_draw_outline(x-3,y-4+y_offset,"?",c_white,obj_control.dark,1)

if y_offset = 1{
	par_non_help_menu.visible = false
	
	draw_set_halign(fa_center)
	
	scr_draw_outline(x,y+30,"Controls",c_white,obj_control.dark,1)
	scr_draw_outline(x,y+50,"AD or arrows to move",c_white,obj_control.dark,1)
	scr_draw_outline(x,y+65,"Space, W, or up arrow to jump",c_white,obj_control.dark,1)
	scr_draw_outline(x,y+80,"S or down arrow to grab",c_white,obj_control.dark,1)
	scr_draw_outline(x,y+95,"F to toggle fullscreen",c_white,obj_control.dark,1)
	scr_draw_outline(x,y+110,"R or the restart button to restart level",c_white,obj_control.dark,1)
	scr_draw_outline(x,y+125,"Escape to return to menu or exit",c_white,obj_control.dark,1)
	scr_draw_outline(x,y+140,"Warning! No Saving",c_white,obj_control.dark,1)
	
	draw_set_halign(fa_left)

}else{
	par_non_help_menu.visible = true
}
