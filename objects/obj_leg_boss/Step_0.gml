if(instance_number(obj_boss_torso) > 0 && parent.speed!= 0){
	image_angle += 6 * sign(image_xscale);
	
}
else if(!die){
	image_angle = 0;
	image_xscale = 1 * sign(image_xscale);
	image_yscale = 1;
}
if(die){
	image_xscale += 0.05 * sign(image_xscale);
	image_yscale = image_xscale;
	y-= 3;
	image_angle+= 15;
}