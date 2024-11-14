// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ajusta_ang(){
	if(face == 1)
	{
		if(up)
		{
			if(ang < 90) ang++;
		}
		if(down)
		{
			if(ang > -90) ang--;
		}
	}

	else if(face == -1)
	{
		if(up)
		{
			if(ang > 90) ang--;
		}
		if(down)
		{
			if(ang < 270) ang++;
		}
	}
}