/// @description Crinado os inimigos
// Você pode escrever seu código neste editor

var xx = irandom_range(50,1800)
var yy = irandom_range(-50,-400)


var chance = random_range(0,level);



if (chance > 2) {
	
	
	instance_create_layer(random(xx),yy,"inimigo1",obj_inimigo2)
	
	}
	
	instance_create_layer(xx,yy,"inimigo1",obj_inimigo1)
	
	
alarm[0] = room_speed


