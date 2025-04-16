
//normal
if(reload<480){
	reload--;
}
else{
	image_angle += 7;
	image_xscale += 0.2;
	image_yscale+= 0.2;
	y-= 6;
	
}

if(reload <=0){
	if(image_index == 0){
		var inst = instance_create_layer(x,y-3,"Instances",obj_bullet);
		inst.direction = image_angle +(90 - sign(image_xscale) *90);
		inst.image_xscale = 0.9;
		inst.image_yscale = 0.9;
	}
	reload = 55;	
}
if(breakd){
	reload = 500;
}
	
