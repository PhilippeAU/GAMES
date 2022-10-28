//Códigos para andar,colisão,pulo

image_xscale = 1.5
image_yscale = 1.5


metros=0
pontos=30
spd=5
hspd=0
vspd=5
jspd=-16
pulos=2
grav=1
veloalme=10


contagem_pontos = function(){
	
	pontos-= 0.015;
	
	metros+=0.015
	
	if pontos <= 0{
		
		room_restart()
		
		}

}

andando = function(){
	
	var dir,esq

	 dir = keyboard_check(ord("A"));
	 esq = keyboard_check(ord("D"));
 
	 hspd =  (esq - dir) * spd
	 
	 if sign(hspd)<0{
	
	image_xscale=+1.5
	} 
	
else {
	
	image_xscale=-1.5
}
}


colisao = function(){

	if place_meeting(x+hspd,y,obj_plataforma){
	
	while !place_meeting(x+sign(hspd),y,obj_plataforma){
	 
	 x+=sign(hspd)
	}
	
	hspd=0
}

	x+=hspd	

	if place_meeting(x,y+vspd,obj_plataforma){
	
	while !place_meeting(x,y+sign(vspd),obj_plataforma){
	 
	 y+=sign(vspd)
	}
	
	vspd=0
}

	y+=vspd
	
	if place_meeting(x+hspd,y,obj_plataforma_metade){
	
		while !place_meeting(x+sign(hspd),y,obj_plataforma_metade){
		
		x+=sign(hspd)
	}
	
		hspd=0
}

	if place_meeting(x,y+vspd,obj_plataforma_metade){
	
		while !place_meeting(x,y+sign(vspd),obj_plataforma_metade){
	 
		 y+=sign(vspd)
	}
	
		vspd=0
}

}

pulando = function(){
	
	if place_meeting(x,y+1,obj_plataforma){
	
		pulos=2
	
}
	else if place_meeting(x,y+1,obj_plataforma_metade){
	
		pulos=2
}
	else if place_meeting(x+1,y,obj_plataforma_metade){
	
		pulos=2
}


	else{	
		
		vspd+=grav
}
	
	if keyboard_check_pressed(vk_space) && pulos > 0 {
	
		vspd = jspd
		pulos -= 1
	
}
	

}








