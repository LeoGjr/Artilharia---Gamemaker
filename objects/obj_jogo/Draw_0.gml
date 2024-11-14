/// @description Insert description here
// You can write your code in this editor

if(room == rm_inicio)
{
	var h = sprite_get_height(spr_player) * 2;
	var w = sprite_get_width(spr_player) * 2;
	var c1 = c_white;
	
	for(var i = 0; i < 3; i++)
	{
		var x1 = 180 + i * w + 80 * i;
		var x2 = x1 + w * 2;
		var y1 = 150;
		var y2 = y1 + h * 2;
		
		if(mouse_x > x1 && mouse_x < x2 && mouse_y > y1 && mouse_y < y2)
		{
			c1 = c_yellow;
			alpha = .4;
			
			if(mouse_check_button_pressed(mb_left))
			{
				if(global.atual != noone)
				{
					global.atual.spr_n = i * 6;
					global.atual.sprite = spr_player;
					global.atual = noone;
				}
			}
		}
		else
		{
			c1 = c_white;
			alpha = 0;
		}
		
		draw_set_color(c1);
		draw_set_alpha(alpha);
		draw_rectangle(x1, y1, x2, y2, false);
		draw_set_alpha(1);
		draw_rectangle(x1, y1, x2, y2, true);
		draw_set_color(-1);
		
		spr_n += 1.5/room_speed;
		spr_n %= 5;
		draw_sprite_ext(spr_player, i * 6 + spr_n, x1 + w, y1 + h + h/2, 2, 2, 0, c_white, 1);
		
	}
	
	
	draw_set_font(fnt_text);
	var w = string_width("OK");
	var h = string_height("OK");
	var x1 = room_width - 60;
	var y1 = room_height - 40;
	var x2 = x1 + w * 2;
	var y2 = y1 + h * 2;
	var c1 = c_aqua;
	
	//draw_set_font(-1);
	
	
	if(mouse_x > x1 && mouse_x < x2 && mouse_y > y1 && mouse_y < y2)
	{
		c1 = c_olive;
		if(mouse_check_button_released(mb_left) && global.n_players > 1)
		{
			var num = 0;
			for(var i = 0; i < array_length_1d(sel_lista); i++)
			{
				if(sel_lista[i].sprite != noone)
				{
					global.players[# num, 1] = sel_lista[i].nick;
					
					global.players[# num, 2] = sel_lista[i].spr_n;
					
					num++;
					
					total_p++;
				}
			}
			room_goto(rm_level);
		}
	}
	else
	{
		c1 = c_aqua;
	}
	
	draw_set_color(c1);
	draw_rectangle(x1, y1, x2, y2, false);
	
	draw_set_color(c_black);
	draw_text(x1 + w/2, y1 + h/2, "OK");
	
	draw_set_font(-1);
	draw_set_color(-1);
}


if(room == rm_level)
{
	var xx = camera_get_view_x(view_camera[0]);
	var yy = camera_get_view_y(view_camera[0]);
	 
	
	if(player_atual.y > yy + 170)
	{
		draw_alpha = lerp(draw_alpha, .4, .05);
	}
	else
	{
		draw_alpha = lerp(draw_alpha, 1, .05);
	}
	
	draw_set_alpha(draw_alpha);
	
	draw_sprite(spr_ui, 0, xx, yy);
	
	if(player_atual != noone)
	{
		if(player_atual.n_tiro == 1)
		{
			draw_set_color(c_yellow);
			draw_set_alpha(.7);
			gpu_set_blendmode(bm_add);
			draw_rectangle(xx + 15, yy + 177, xx + 15 + 12, yy + 177 + 4, false);
			draw_set_color(-1);
			draw_set_alpha(1)
			gpu_set_blendmode(bm_normal);
		}
		else
		{
			draw_set_color(c_yellow);
			draw_set_alpha(.7);
			gpu_set_blendmode(bm_add);
			draw_rectangle(xx + 45, yy + 177, xx + 45 + 12, yy + 177 + 4, false);
			draw_set_color(-1);
			draw_set_alpha(1)
			gpu_set_blendmode(bm_normal);
		}
		
		draw_set_font(nick2);
	
		draw_set_color(c_black);
		draw_text(xx + 75 + 1, yy + 187 + 1, player_atual.ang);
		
		draw_set_color(c_white);
		draw_text(xx + 75, yy + 187, player_atual.ang);
		
		draw_set_font(-1);
		draw_set_color(-1);
		
		if(player_atual.forca > 0 && player_atual.carga > 0)
		{
			var valor = player_atual.forca * 200;
			draw_set_color(c_red);
			draw_set_alpha(.7);
			gpu_set_blendmode(bm_add);
			draw_rectangle(xx + 140, yy + 175, xx + 140 + valor, yy + 175 + 20, false);
			draw_set_color(-1);
			draw_set_alpha(-1);
			gpu_set_blendmode(-1);
		}
		
	}
	draw_set_alpha(1);
}

