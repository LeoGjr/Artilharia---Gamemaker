/// @description Insert description here
// You can write your code in this editor

seguir_t = false;
seguir_p = true;

if(fazer)
{
	with(obj_jogo)
	{
		player_atual.cor1 = c_white;
		if(player_atual_num < ds_list_size(player_list) - 1) player_atual_num++;
		else player_atual_num = 0;
	
		player_atual.carga = 1;
		player_atual.forca = 0;
	}
}


fazer = true;
