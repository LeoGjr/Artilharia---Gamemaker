/// @description Insert description here
// You can write your code in this editor

draw_self();

if(estado == "atirando")
{
	if(delay_soltar >= room_speed / 2)
	{
		mira_n += .2;
		mira_n %= sprite_get_number(spr_mira);
		
		draw_sprite_ext(spr_mira, mira_n, x, y - sprite_height / 2, forca, 1, ang, c_white, 1);
	}
	else
	{
		forca = 0;
	}
}

var yy = y - sprite_yoffset;

draw_set_color(c_black);
draw_set_font(nick2);
draw_set_halign(fa_center);

draw_text(x + 1, yy - 10 + 1, nick);
draw_set_color(cor1);

draw_text(x, yy - 10, nick);
draw_set_halign(-1);
draw_set_color(-1);
draw_set_font(-1);


var vida_atual = (vida / max_vida) * 100;
if(image_xscale == 1)
{
	var dir = 0;
}
else
{
	var dir = 1;
}

draw_healthbar(x - sprite_width, y + 2, x + sprite_width, y + 5, vida_atual, c_black, c_red, c_green, dir, 1, 1);
