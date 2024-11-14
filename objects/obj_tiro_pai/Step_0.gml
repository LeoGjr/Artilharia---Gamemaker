/// @description Insert description here
// You can write your code in this editor

var outro = instance_place(x, y, obj_mapa);

if(outro)
{
	instance_destroy();
}

var inimigo = instance_place(x, y, obj_player);

if(inimigo)
{
	if(inimigo != pai)
	{
		inimigo.vida -= dano;
		y = inimigo.y - sprite_height/2;
		x = inimigo.x;
		instance_destroy();
	}
	
}

if(y > room_height + 200) instance_destroy();

