/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor




// Inherit the parent event
event_inherited();

if (y > room_height / 3 && mover_para_lado == true) {
	
	

	if (x > room_width/2 ){

		show_debug_message("direita")
		
		hspeed = -5;
		
		mover_para_lado = false;
	
	}
	else{

		show_debug_message("esquerda")
		
		hspeed = +5
		
		mover_para_lado = false;
	
	}

}


