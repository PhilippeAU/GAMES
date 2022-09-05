/// @description Pontos
 
 
 //Mudando de font
 draw_set_font(fnt_pontos)
 //Mostrando os pontos
 //Mundando a cor do texto
 
 draw_set_color(c_black);
 var pontos_texto = string(round(pontos));
 draw_text(11,7,"Pontos: " + pontos_texto)

//Resentando a cor
draw_set_color(-1);
//Resentando a fonte
draw_set_font(-1);


