var montanha1_y = random_range(-171,0)
//Criando a montanha de cima
instance_create_layer(839,montanha1_y,"instances", obj_montanha_cima)

//Garantir que o espaço entre as monstanhas é o mesmo
//Criando a montanha de baixo
instance_create_layer(839,montanha1_y+647,"instances", obj_montanha_baixo)
	
// Reiniciar o alarme

//Melhorando o intervalo

var tempo_minimo = 1/ (1 + (global.level * 0.1))

alarm[0] = room_speed * random_range(tempo_minimo,2.3)


