//ANDAR CODIGO MELHORADO
move = -keyboard_check(vk_left)+keyboard_check(vk_right)
	
	 hsp=move*spd
	
if sign(hsp)<0{
	
	image_xscale=-2
	} 
	
else {
	
	image_xscale=2
}
	
	 
if sign(hsp)!=0{
	
	sprite_index=spr_andando
}
else{
	sprite_index=spr_personagem
}


if place_meeting(x+hsp,y,obj_bloco){
	
	while !place_meeting(x+sign(hsp),y,obj_bloco){
	 
	 x+=sign(hsp)
	}
	
	hsp=0
}
x+=hsp

if place_meeting(x,y+vsp,obj_bloco){
	
	while !place_meeting(x,y+sign(vsp),obj_bloco){
	 
	 y+=sign(vsp)
	}
	
	vsp=0
}

y+=vsp




//PULO CODIGO MELHORADO
if place_meeting(x,y+1,obj_bloco){
	
	pulos=2
	
}
else{
	
	vsp+=grav
}
if keyboard_check_pressed(vk_space) && pulos>0{
		
	sprite_index=spr_pulo
	vsp=jspd
	pulos-=1
        	
	
}
 
 //ABAIXAR

if keyboard_check(vk_shift){
	
	object_get_mask(obj_abaixar)
	sprite_index=spr_abaixar
	
}

 


