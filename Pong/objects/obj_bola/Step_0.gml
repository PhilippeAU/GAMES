/// @description Insert description here
// You can write your code in this editor

//Checando se a bola saiu pela esquerda
if (x < -64)
{
	//Reiniciando o jogo
	game_restart();
}

//Checando se a bola saiu pela direita
if (x > 704)
{
	//Reiniciando o jogo
	game_restart();
}