/// @description Insert description here
// You can write your code in this editor

draw_self();


if(on)
{
	if(sprite != noone)
	{
		var w = sprite_get_width(spr_player) * 2;
		var h = sprite_get_height(spr_player) * 2;
		var x1 = x + sprite_width / 2;
		var y1 = y + sprite_height / 2 + h/2;
		
		draw_sprite_ext(sprite, spr_n, x1, y1, 2, 2, 0, c_white, 1);
	}
}
else
{
	sprite = noone;
	spr_n = 0;
}


var x1 = x;
var y1 = y + sprite_height + 4;
var x2 = x1 + sprite_width;
var y2 = y1 + 15;
var c1 = c_black;

if(mouse_x > x1 && mouse_x < x2 && mouse_y > y1 && mouse_y < y2)
{
	c1 = c_ltgray;
	
	if(mouse_check_button_pressed(mb_left))
	{
		nick_s = true;
		nick = "";
		keyboard_string = "";
	}
}
else
{
	if(mouse_check_button_pressed(mb_left) or keyboard_check(vk_enter))
	{
		nick_s = false;
	}
	c1 = c_black;
}

if(nick_s)
{
	if(keyboard_check(vk_enter))
	{
		nick_s = false;
	}
}

if(nick_s)
{
	c1 = c_orange;
	nick = keyboard_string;
}


draw_set_color(c1);
draw_rectangle(x1, y1, x2, y2, false);

draw_rectangle_color(x1 + 2, y1 + 2, x2 - 2, y2 - 2, c_blue, c_blue, c_aqua, c_blue, false);
draw_set_color(-1);



draw_set_font(fnt_nick);
draw_set_color(c_black);

draw_text(x1 + 5, y1, nick);

draw_set_color(c_white);
draw_text(x1 + 4, y1 - 1, nick);

draw_set_font(-1);
draw_set_color(-1);
