/// @description Insert description here
// You can write your code in this editor

//event_inherited();

if(place_meeting(x, y + vspeed, obj_mapa))
{
	if(!ativo) ativo = true;
	
	while(!place_meeting(x, y + sign(vspeed), obj_mapa))
	{
		y += sign(vspeed);
	}
	vspeed *= -.9;
}


if(place_meeting(x + hspeed, y, obj_mapa))
{
	if(!ativo) ativo = true;
	
	while(!place_meeting(x + sign(hspeed), y, obj_mapa))
	{
		x += sign(hspeed);
	}
	hspeed *= -.5;
}



if(ativo)
{
	explodir--;
}
if(explodir <= 0)
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
