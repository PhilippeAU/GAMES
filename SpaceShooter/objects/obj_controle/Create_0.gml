/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

alarm[0] = room_speed; // room_speed = 1segundo

pontos = 0;


level = 1;

proximo_level = 100;


ganhando_pontos = function(){

	pontos += 10;

	if pontos > proximo_level{
	
	level++
	proximo_level*=2
	obj_player.velocidade += 1
	
	}
}