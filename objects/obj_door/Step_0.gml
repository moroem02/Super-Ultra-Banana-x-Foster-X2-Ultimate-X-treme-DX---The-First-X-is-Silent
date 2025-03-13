if(distance_to_object(obj_target) < 500){
	var inst = instance_nearest(x, y, obj_target)
	if(inst.image_index == 1){
		
		go = true;
	}
}
if(go){
	y -= 2;		
}