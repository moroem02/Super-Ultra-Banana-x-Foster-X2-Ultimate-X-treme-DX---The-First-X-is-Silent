if(distance_to_object(obj_target) < 500){
	var inst = instance_nearest(x, y, obj_target)
	if(inst.image_index == 1 && !go && global.resp < 1){
		global.doors[array_length(global.doors)] = x;
		global.doors[array_length(global.doors)] = y;
		global.doors[array_length(global.doors)] = image_angle;
		global.doors[array_length(global.doors)] = image_xscale;
		global.doors[array_length(global.doors)] = image_yscale;
		go = true;
	}
}
if(go){
	if(global.resp > 0){
		instance_destroy();	
	}
	y -= 2;		
}