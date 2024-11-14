/// @description Insert description here
// You can write your code in this editor

if(tipo != 0)
{
	if(tipo == 1)
	{
		var xx = x - lengthdir_x(sprite_width, direction);
		var yy = y - lengthdir_y(sprite_height, direction);
		draw_sprite_ext(spr_tiro1, 0, x, y, image_xscale, image_yscale, direction + 180, image_blend, image_alpha);
		
		part_emitter_region(global.part_sys, global.em, xx, xx, yy, yy, ps_shape_diamond, ps_distr_gaussian);
		
		part_emitter_burst(global.part_sys, global.em, global.part, 5);
	}
}
else
{
	draw_self();
}
