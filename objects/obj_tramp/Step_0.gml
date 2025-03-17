if(image_index >= 3){
	
	instance_destroy();
	
	repeat(100){

		var inst = instance_create_layer(x,y,"Instances", obj_part_black);	
		inst.image_xscale = 3.5;
		inst.image_yscale = 3.5;
		inst.image_index = 1;
		inst.image_blend = c_orange;
			
	}
}