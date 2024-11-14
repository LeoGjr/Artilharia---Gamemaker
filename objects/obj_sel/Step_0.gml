/// @description Insert description here
// You can write your code in this editor

var mouse_sobre, mouse_click;

mouse_sobre = position_meeting(mouse_x, mouse_y, self);
mouse_click = mouse_check_button_pressed(mb_left);

if(on && sprite != noone)
{
	image_blend = c_lime;
}
else
{
	image_blend = c_orange;
}


if(mouse_sobre)
{
	image_blend = c_yellow;
	
	if(mouse_click)
	{
		if(!on)
		{
			global.n_players++;
		}
		else
		{
			global.n_players--;
		}
		
		on = !on;
		
		
		
		if(on)
		{
			if(global.atual != noone && global.atual != self)
			{
				global.atual.on = false;
				global.n_players--;
			}
			global.atual = self;
		}
		else
		{
			global.atual = noone;
		}
	}
}

if(global.atual == self)
{
	image_blend = c_red;
}
