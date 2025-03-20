repeat(50){
	var inst = instance_create_layer(x,y,"Instances", obj_part_black);	
			inst.image_xscale = 5;
			inst.image_yscale = 5;
			inst.image_index = 1;
			inst.image_blend = c_purple;
}