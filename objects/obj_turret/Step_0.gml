//@desc - reloading / firing nullets
if(reload<480){
	reload--;
}
else{
	image_angle += rspeed;
	rspeed += 0.6;
	
	if(rspeed > 25){
		image_angle	= 0;
		instance_destroy();
		repeat(70){
			
			var inst = instance_create_layer(x,y,"Instances", obj_part_black);	
			inst.image_xscale = 1.45;
			inst.image_yscale = 1.6;
			inst.image_index = 1;
			inst.image_blend = c_red;
			
		}
	}
}
if(reload <=0){
	var inst = instance_create_layer(x,y,"Instances",obj_bullet);
	inst.direction = image_angle-180;
	reload = 45;	
}