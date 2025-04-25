if(other.image_index != 1){
	if(iframe< 0){
		hits -= 1;	
	}
	iframe = 40;
	vsp = -4;
}
else{
	var inst = instance_create_layer(x,y-30,"Instances",obj_beachBall);
	inst.direction = 20;
}

with(other){
	instance_destroy();
}