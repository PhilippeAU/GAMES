/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


vspeed = 2.5;

alarm[0] = random_range(1,3) * room_speed;

atirando_inimigo = function() {

	if (y >= 0){
		instance_create_layer(x - 3,y + sprite_height/1.9, "inimigo1", obj_tiro_inimigo1)

		alarm[0] = room_speed * random_range(1,3)

}
	
}