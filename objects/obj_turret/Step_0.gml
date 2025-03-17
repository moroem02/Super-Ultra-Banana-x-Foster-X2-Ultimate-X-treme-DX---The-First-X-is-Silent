//@desc - reloading / firing nullets
if(reload<480){
	reload--;
}
else{
	image_angle += rspeed;
	rspeed += 0.25;
	
	if(rspeed > 25){
		image_angle	= 0;
		instance_destroy();
		repeat(65){

			var inst = instance_create_layer(x,y,"Instances", obj_part_black);	
			inst.image_xscale = 1.25;
			inst.image_yscale = 1.25;
			
		}
	}
}
if(reload <=0){
	var inst = instance_create_layer(x,y,"Instances",obj_bullet);
	inst.direction = image_angle-180;
	reload = 45;	
}