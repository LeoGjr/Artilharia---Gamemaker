/// @description Insert description here
// You can write your code in this editor

surf = surface_create(room_width, room_height);

surface_set_target(surf);
draw_sprite(spr_mapa, global.mapa, 0, 0);
surface_reset_target();

spr = sprite_create_from_surface(surf, 0, 0, room_width, room_height, true, true, 0, 0);

sprite_index = spr;


//var layer_id = layer_get_id("Background");
//var back_id = layer_background_get_id(layer_id);
//layer_background_index(back_id, global.mapa);
