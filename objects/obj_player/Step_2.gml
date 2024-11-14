/// @description Insert description here
// You can write your code in this editor

repeat(abs(velv))
{
	if(!place_meeting(x, y + sign(velv), obj_mapa))
	{
		y += sign(velv);
	}
	else
	{
		velv = 0;
		break;
	}
}


repeat(abs(velh))
{
	
	if(place_meeting(x + sign(velh), y, obj_mapa) && 
	!place_meeting(x + sign(velh), y - 1, obj_mapa)) y--;
	
	if(place_meeting(x + sign(velh), y, obj_mapa) &&
	place_meeting(x + sign(velh), y - 1, obj_mapa) &&
	!place_meeting(x + sign(velh), y - 2, obj_mapa)) y -= 2;
	
	if (!place_meeting(x + sign(velh), y, obj_mapa) &&
	!place_meeting(x + sign(velh), y + 1, obj_mapa) &&
	!place_meeting(x + sign(velh), y + 2, obj_mapa) &&
	place_meeting(x + sign(velh), y + 3, obj_mapa)) y += 2;
	
	if(!place_meeting(x + sign(velh), y, obj_mapa) &&
	!place_meeting(x + sign(velh), y + 1, obj_mapa) &&
	place_meeting(x + sign(velh), y + 2, obj_mapa)) y++;
	
	
	if(!place_meeting(x + sign(velh), y, obj_mapa))
	{
		x += sign(velh);
	}
	else
	{
		velh = 0;
		break;
	}
}