//Ganhando pontos

pontos+=0.1 * global.level;




// Ganhando level SE os pontos forem maior que 100

if (pontos > proximo_level){
	
	global.level++;
	
	//Aumentando pontos necessários para o próximo level
	proximo_level *= 2
	
	audio_play_sound(snd_level,1,false)
	
}

//Ajustando a velocidade do background
//Pegando a layer do background

var background = layer_get_id("Background");
layer_hspeed(background,-1 - global.level)


var chao = layer_get_id("chao");
layer_hspeed(chao,-4 - global.level*1.5);


