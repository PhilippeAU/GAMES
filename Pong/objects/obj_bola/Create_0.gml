/// @description Insert description here
// You can write your code in this editor
//Iniciando a velocidade da bola


//seed - contém vários números
//Mudar a seed do meu jogo, antes de escolher um valor aleatório
randomize();

//Definindo a direção inicial da bola
//Ela vai ir para a esquerda
//Escolhendo entre superior esquerda, superior direita, inferior direita e inferior esquerda
direction = choose(45, 135, 225, 315);

//Iniciando o meu alarme para 1 segundo
alarm[0] = room_speed;