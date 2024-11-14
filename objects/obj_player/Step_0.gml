/// @description Insert description here
// You can write your code in this editor


chao = place_meeting(x, y + 1, obj_mapa);


switch(estado)
{
	case "parado":
		if(delay_soltar <= room_speed / 2) delay_soltar++;
		image_speed = 0;
		image_index = spr_inicio;
		
		
		scr_ajusta_ang();
		
		
		velh = (right - left) * max_velh;
		
		if(!chao) estado = "caindo";
		
		if(velh != 0) estado = "movendo";
		
		if(segura && delay_soltar >= room_speed / 2) estado = "atirando";
		break;
		
	case "movendo":
		if(delay_soltar <= room_speed / 2) delay_soltar++;
		if(velh != 0) image_xscale = sign(velh);
		
		velh = (right - left) * max_velh;
		
		
		scr_ajusta_ang();
		
		
		animacao_mov += animacao_speed;
		animacao_mov %= 2;
		
		
		image_index = spr_inicio + 1 + floor(animacao_mov);
		
		
		if(!chao) estado = "caindo";
		if(velh == 0) estado = "parado";
		if(segura && delay_soltar >= room_speed / 2) estado = "atirando";
		
		break;
		
		
	case "caindo":
		if(delay_soltar <= room_speed / 2) delay_soltar++;
		delay_cair--;
		if(delay_cair <= 0) velh = 0;

		if(!chao)
		{
			if(velv < max_velv) velv += grav;
		}
		
		if(chao)
		{
			delay_cair = room_speed / 6;
			estado = "parado";
		} 
		
		break;
		
		
	case "atirando":
		
		velh = 0;
		
		
		if(forca < 1) forca += .01;
		
		
		if(segura && delay_soltar >= room_speed / 2)
		{
			image_index = spr_inicio + 3;
			
			scr_ajusta_ang();
		} 
		else
		{
			
			if(delay_soltar > room_speed / 2)
			{
				scr_cria_tiro(spr_inicio, ang, forca, self, n_tiro);
				carga--;
				forca = 0;
			}
			
			image_index = spr_inicio + 4;
			delay_soltar--;
		}
		
		
		if(delay_soltar <= 0)
		{
			estado = "parado";
		} 
		
		break;
}




if(vida <= 0 or y > room_height + 50)
{
	if(instance_exists(obj_camera))
	{
		obj_camera.seguir_p = false;
		obj_camera.alarm[0] = room_speed;
		obj_camera.fazer = false;
	}
	
	
	var pos = ds_list_find_index(obj_jogo.player_list, self);
	ds_list_delete(obj_jogo.player_list, pos);
	
	with(obj_jogo)
	{
		player_atual.cor1 = c_white;
		if(player_atual_num < ds_list_size(player_list) - 1) player_atual_num++;
		else player_atual_num = 0;
	
		player_atual.carga = 1;
		player_atual.forca = 0;
	}
	
	instance_destroy();
}