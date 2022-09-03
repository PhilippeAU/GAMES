if (automatico == true){

//y = obj_bola.y;

	y = lerp (y, obj_bola.y, 0.08)
	
}

if (y < 64){

	y = 64;	
}

if (y > 416){


	y = 416;
}



