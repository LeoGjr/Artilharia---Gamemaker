// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_raycast(){
	var x1 = argument0;
	var y1 = argument1;
	var col = argument2;

	for(var i = 0; i < room_height; i++)
	{
		var x2 = x1 + lengthdir_x(i, 270);
		var y2 = y1 + lengthdir_y(i, 270);
	
		var colisao = collision_line(x1, y1, x2, y2, col, true, true);
	
		draw_line(x1, y1, x2, y2);
	
		if(colisao)
		{
			return y2;
		}
	}

	return false;

}