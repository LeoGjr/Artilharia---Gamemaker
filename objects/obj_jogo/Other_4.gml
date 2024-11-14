/// @description Insert description here
// You can write your code in this editor

if(room == rm_inicio)
{
	for(var i = 0; i < array_length_1d(sel_lista); i++)
	{
		var w = sprite_get_width(spr_sel);
		sel_lista[i] = instance_create_layer(45 + i * w + i * 20, 20, "Mapa", obj_sel);
	}
	
	instance_create_layer(224, 224, "Mapa", obj_sel_mapa);
}


if(room == rm_level)
{
	var cols = room_width div 32;
	var num = 0;
	
	
	do
	{
		for(var i = 0; i < cols; i++)
		{
			var teste = irandom_range(i, cols) * 32;
		
			if(ds_list_find_index(n_posso, teste) != -1)
			{
				var criar = false;
			}
			else
			{
				var criar = true;
			}
		
			var posy = scr_raycast(teste, 0, obj_mapa);
		
			if(posy)
			{
				if(criar && global.n_players > 0)
				{
					global.n_players--;
					var p = instance_create_layer(teste, posy - 50, "Players", obj_player);
					global.players[# num, 0] = p;
					p.spr_n = global.players[# num, 2];
					p.spr_inicio = global.players[# num, 2];	
					p.nick = global.players[# num, 1];
					ds_list_add(player_list, p);
				
					ds_list_add(n_posso, teste);
					num++;
				}
			}
		}
	} until(global.n_players == 0)
	
	camera = instance_create_layer(0, 0, "instances", obj_camera);
	var alvo = irandom(ds_list_size(player_list) - 1);
	camera.alvo = player_list[| alvo];
	camera.seguir_p = true;
	player_atual = player_list[| alvo];
	player_atual_num = ds_list_find_index(player_list, player_atual);
}
