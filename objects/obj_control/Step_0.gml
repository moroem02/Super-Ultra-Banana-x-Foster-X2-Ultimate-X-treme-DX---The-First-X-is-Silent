if(room !=Room3){
	if(instance_number(obj_player) == 0){
		instance_create_layer(global.respawn_x,global.respawn_y, "Instances", obj_player);		
	}
}