/// @description Insert description here
// You can write your code in this editor

if(room == rm_level)
{
	if(keyboard_check_pressed(vk_escape)) game_restart();
	if(instance_number(obj_player) < 2)
	{
		game_restart();
	}
	
	if(player_atual != noone)
	{
		player_atual = player_list[| player_atual_num];
		
		if(camera.seguir_p) camera.alvo = player_atual;
		
		with(player_atual)
		{
			if(carga > 0)
			{
				left = keyboard_check(ord("A"));
				right = keyboard_check(ord("D"));
				up = keyboard_check(ord("W"));
				down = keyboard_check(ord("S"));
				troca_t = keyboard_check_pressed(vk_tab);
				
				if(troca_t)
				{
					if(n_tiro < 2) n_tiro++;
					else n_tiro = 1;
				}
			}
			
			
			cor1 = c_red;
			
			if(estado != "caindo")
			{
				if(carga > 0)
				{
					segura = keyboard_check(ord("J"));
				}
				
				if(estado != "atirando")
				{
					if(right)
					{
						if(face != 1) ang = 0;
						face = 1;
						
					}
					if(left)
					{
						if(face != -1) ang = 180;
						face = -1;
					}
				}
			}
			
		}
		
		if(keyboard_check_pressed(vk_space))
		{
			player_atual.cor1 = c_white;
			if(player_atual_num < ds_list_size(player_list) - 1) player_atual_num++;
			else player_atual_num = 0;
			
			player_atual.carga = 1;
		}
	}
}
else
{
	if(keyboard_check_pressed(vk_escape)) game_end();
}
