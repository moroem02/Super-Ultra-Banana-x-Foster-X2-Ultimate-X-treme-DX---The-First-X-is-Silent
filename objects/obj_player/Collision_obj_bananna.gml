if(other.image_index != 1){
	obj_ba.image_alpha = 1;
}
else{
	var inst = instance_create_layer(x,y-30,"Instances",obj_beachBall);
	inst.direction = 20;
}

with(other){
	instance_destroy();
}