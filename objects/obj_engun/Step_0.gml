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
	var inst = instance_create_layer(x,y,"Instances",obj_bullet);
	inst.direction = image_angle;
	reload = 45;	
}
