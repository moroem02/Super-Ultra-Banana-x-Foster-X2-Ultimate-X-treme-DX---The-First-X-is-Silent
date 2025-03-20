repeat(60){
	var inst = instance_create_layer(x,y,"Instances", obj_part_black);	
			inst.image_xscale = 15;
			inst.image_yscale = 15;
			inst.image_index = 1;
			inst.image_blend = c_purple;
}