global.breakables[array_length(global.breakables)] = x;
global.breakables[array_length(global.breakables)] = y;
global.breakables[array_length(global.breakables)] = image_angle;
global.breakables[array_length(global.breakables)] = image_xscale;
global.breakables[array_length(global.breakables)] = image_yscale;
repeat(100){
	var inst = instance_create_layer(x,y,"Instances", obj_part_black);	
}