/// @description Insert description here
// You can write your code in this editor


var mouse_sobre, mouse_click, mouse_direito;

mouse_sobre = position_meeting(mouse_x, mouse_y, self);
mouse_click = mouse_check_button_pressed(mb_left);
mouse_direito = mouse_check_button_pressed(mb_right);

if(mouse_sobre)
{
	cor = c_yellow;
	if(mouse_click)
	{
		image_index++;
		image_index %= image_number;
	}
	else if(mouse_direito)
	{
		image_speed = random_range(.5, 2);
	}
}
else
{
	cor = c_black;
}

if(image_speed > .1)
{
	image_speed = lerp(image_speed, 0, .01);
}
else
{
	image_speed = 0;
}

global.mapa = image_index;
