/// @description Insert description here
// You can write your code in this editor

//Seguindo o y da bola
//Acessando a bola, e então pegando a variável Y dela


//Colocando o meu Y para ser igual ao Y da bola, SE o automatico esta ativo, é true
if (automatico == true)
{
	//Segue a bola
	//y = obj_bola.y;
	
	//ajustando a posição do meu y
	y = lerp(y, obj_bola.y, 0.05);
	
}
//Impedindo que o y dele fique menor do que 64
if (y < 64)
{
	//Travando o y em 64
	y = 64;
}

if (y > 416)
{
	y = 416;
}