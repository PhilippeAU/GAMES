/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

cliquesx = 5
cliqueso = 5
	
if mouse_check_button_pressed(mb_left){
	
		instance_create_layer(mouse_x,mouse_y,"instances",obj_bola)
		
			cliquesx-=1
	
	
	}
	
	else if mouse_check_button_pressed(mb_right){
	
		instance_create_layer(mouse_x,mouse_y,"instances",obj_xis)
		
			cliqueso-=1
	
	
	}
	
	if (cliquesx < 1 || cliqueso < 1) {
		
		game_restart()
		
}
		







