/// @description Insert description here
// You can write your code in this editor

//if(instance_exists(obj_player))
//{
//	alvo = obj_player;
//}


if(alvo != self)
{
	cam_w = 358;
	cam_h = 201;
}

if(seguir_p)
{
	x = lerp(x, alvo.x, .1);
	y = lerp(y, alvo.y, .1);
}
else if(seguir_t)
{
	if(instance_exists(obj_tiro_pai))
	{
		alvo = instance_nearest(x, y, obj_tiro_pai);
		
		x = lerp(x, alvo.x, .1);
		y = lerp(y, alvo.y, .1);
	}
}
else
{
	if(keyboard_check(vk_left)) x -= 5;
	if(keyboard_check(vk_right)) x += 5;
	if(keyboard_check(vk_up)) y -= 5;
	if(keyboard_check(vk_down)) y += 5;
}

if(keyboard_check_pressed(vk_enter))
{
	seguir_p = !seguir_p;
}

camera_set_view_size(view_camera[0], cam_w, cam_h);
