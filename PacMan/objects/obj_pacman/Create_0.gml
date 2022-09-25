/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_xscale = 0.68
image_yscale = 0.68

vvelocidade = 2.6;
hvelocidade = 2.6;


andando = function(){

		if keyboard_check(ord("D")){
			
			x+=hvelocidade	
			image_xscale = 0.68
		}
		if keyboard_check(ord("A")){
			
			x-=hvelocidade
			image_xscale =- 0.68
			
		} 
		if keyboard_check(ord("W")){
			
			y-=vvelocidade
			sprite_index = spr_pacman_cima	
		}
		else if keyboard_check(ord("S")){
			
			y+=vvelocidade
			sprite_index = spr_pacman_baixo	
		}
		else{
			sprite_index=spr_pacman_dir

}

}

/*colisao = function(){



if place_meeting(x + hvelocidade, y,obj_parede){

	while !place_meeting(x+sign(hvelocidade),y,obj_parede){
	
	x+=sign(hvelocidade)

	}
	hvelocidade = 0;

}
if place_meeting(x + vvelocidade, y,obj_parede){

	while !place_meeting(x+sign(vvelocidade),y,obj_parede){
	
	x+=sign(vvelocidade)

	}
	vvelocidade = 0;

}


if place_meeting(x,y+vvelocidade,obj_parede_deitada){
	
	while !place_meeting(x,y+sign(vvelocidade),obj_parede_deitada){
	 
	 y+=sign(vvelocidade)
	}
	
	vvelocidade=0
}
if place_meeting(x,y+hvelocidade,obj_parede_deitada){
	
	while !place_meeting(x,y+sign(hvelocidade),obj_parede_deitada){
	 
	 y+=sign(hvelocidade)
	}
	
	hvelocidade=0
}
 


}*/

