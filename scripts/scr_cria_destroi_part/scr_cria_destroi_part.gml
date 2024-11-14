// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cria_destroi_part(){

	

	if(argument0)
	{
		global.part_sys = part_system_create();
		
		global.part = part_type_create();
	
		part_type_shape(global.part, pt_shape_pixel);
		part_type_size(global.part, 1, 2, -.05, 0);
		part_type_scale(global.part, 1, 1);
		part_type_color3(global.part, c_aqua, c_teal, c_black);
		part_type_alpha3(global.part, .7, .5, .2);
		part_type_speed(global.part, .1, .1, 0, 0);
		part_type_gravity(global.part, .02, 90);
		part_type_blend(global.part, 0);
		part_type_orientation(global.part, 0, 359, 0, 0, 1);
		part_type_direction(global.part, 0, 359, .3, 0);
		part_type_life(global.part, room_speed * 2, room_speed * 5);
		
		global.em = part_emitter_create(global.part_sys);
	
	}
	else
	{
		part_type_destroy(global.part);
		part_emitter_destroy(global.part_sys, global.em);
		part_system_destroy(global.part_sys);
	}
}