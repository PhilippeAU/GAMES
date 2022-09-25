/// @description Iniciando variaveis
// Você pode escrever seu código neste editor

velocidade = 8;

andando = function(){
	
	var up, down, left, right;

	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	
	y += (down - up) * velocidade;
	x += (right - left) * velocidade;
	
}


atirando = function(){
	
	var fire = keyboard_check_pressed(vk_space);
	if (fire){

	instance_create_layer(x,y - sprite_height/3, "Tiros", obj_tiro);
	}
	
}