// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cria_tiro(){
	var personagem = argument0;
	var dir = argument1;
	var forca = argument2;
	var criador = argument3;
	var n = argument4;

	switch(personagem)
	{
		case 0:
			if(n == 1)
			{
				for(var i = 0; i < 10; i++)
				{
					var tiro = instance_create_layer(x, y - sprite_height / 2, "Tiro", obj_tiro_colide);
					tiro.speed = forca * 8;
					tiro.direction = dir + random_range(-5, 5);
					tiro.gravity = .05;
					tiro.image_xscale = .05;
					tiro.image_yscale = .05;
					tiro.raio = 10;
					tiro.pai = criador;
					tiro.dano = 1;
					tiro.tipo = 1;
				}
			
				obj_camera.seguir_p = false;
				obj_camera.seguir_t = true;
			}
			
			else
			{
				for(var i = 0; i < 20; i++)
				{
					var tiro = instance_create_layer(x, y - sprite_height / 2, "Tiro", obj_tiro_colide);
					tiro.speed = forca * 8;
					tiro.direction = dir + random_range(-10, 10);
					tiro.gravity = .1;
					tiro.image_xscale = .02;
					tiro.image_yscale = .02;
					tiro.raio = 8;
					tiro.pai = criador;
					tiro.dano = .5;
					tiro.tipo = 1;
				}
			
				obj_camera.seguir_p = false;
				obj_camera.seguir_t = true;
			}
			break;
		
		case 6:
			if(n == 1)
			{
				for(var i = 0; i < 4; i++)
				{
					var tiro = instance_create_layer(x, y - sprite_height, "Tiro", obj_tiro_quica);
					tiro.speed = forca * 5;
					tiro.direction = dir + random_range(-5, 5);
					tiro.gravity = .07;
					tiro.image_xscale = .1;
					tiro.image_yscale = .1;
					tiro.raio = 20;
					tiro.pai = criador;
					tiro.dano = 3;
					tiro.tipo = 1;
				}
			
				obj_camera.seguir_p = false;
				obj_camera.seguir_t = true;
			}
			else
			{
				for(var i = 0; i < 2; i++)
				{
					var tiro = instance_create_layer(x, y - sprite_height, "Tiro", obj_tiro_quica);
					tiro.speed = forca * 3;
					tiro.direction = dir + random_range(-5, 5);
					tiro.gravity = .1;
					tiro.image_xscale = .2;
					tiro.image_yscale = .2;
					tiro.raio = 40;
					tiro.pai = criador;
					tiro.dano = 7;
				}
			
				obj_camera.seguir_p = false;
				obj_camera.seguir_t = true;
			}
			break;
		
		case 12:
			if(n == 1)
			{
				var tiro = instance_create_layer(x, y - sprite_height * 2, "Tiro", obj_tiro_colide);
				tiro.speed = forca * 6;
				tiro.direction = dir + random_range(-5, 5);
				tiro.gravity = .3;
				tiro.image_xscale = .5;
				tiro.image_yscale = .5;
				tiro.raio = 100;
				tiro.pai = criador;
				tiro.dano = 10;

				obj_camera.seguir_p = false;
				obj_camera.seguir_t = true;
			}
			else
			{
				var tiro = instance_create_layer(x, y - sprite_height * 2, "Tiro", obj_tiro_colide);
				tiro.speed = forca * 10;
				tiro.direction = dir + random_range(-5, 5);
				tiro.gravity = .3;
				tiro.image_xscale = .4;
				tiro.image_yscale = .4;
				tiro.raio = 80;
				tiro.pai = criador;
				tiro.dano = 7;

				obj_camera.seguir_p = false;
				obj_camera.seguir_t = true;
			}
			break;
	}

}