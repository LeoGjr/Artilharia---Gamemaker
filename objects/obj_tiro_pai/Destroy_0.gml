/// @description Insert description here
// You can write your code in this editor


if(instance_number(obj_tiro_pai) <= 1)
{
	if(instance_exists(obj_camera))
	{
		obj_camera.seguir_t = false;
		obj_camera.alarm[0] = room_speed;
	}
}

var explo = instance_create_layer(x, y, "Tiro", obj_explosion);
explo.image_xscale = raio/100;
explo.image_yscale = raio/100;

with(obj_mapa)
{
	surface_set_target(surf);
	draw_set_color(c_white);
	draw_ellipse(other.x - other.raio/2, other.y - other.raio/2, other.x + other.raio/2, other.y + other.raio/2, false);
	
	surface_reset_target();
	sprite_delete(spr);
	spr = sprite_create_from_surface(surf, 0, 0, room_width, room_height, true, true, 0, 0);
	
	sprite_index = spr;
}
