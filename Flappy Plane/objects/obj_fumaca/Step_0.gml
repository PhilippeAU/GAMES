/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Começando pequena
image_xscale += 0.015;
image_yscale += 0.015;


//Diminuindo o alpha da imagem
image_alpha -= 0.01

//Destruindo o objeto fumaça

if (image_alpha <= 0){
	
	
	instance_destroy();
}