/// @description Insert description here
// You can write your code in this editor


if(!surface_exists(surf))
{
	surf = surface_create(room_width, room_height);
}
else
{
	surface_set_target(surf);
	draw_sprite(spr, global.mapa, 0, 0);
	surface_reset_target();
}

draw_self();
