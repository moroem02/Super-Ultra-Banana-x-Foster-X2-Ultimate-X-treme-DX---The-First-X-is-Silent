if(thro){
	image_angle+= 15;
	throtime ++;
	if(throtime > 120){
		thro = false;
		throtime = 0;
	}
}
else if(!die){
	image_angle = 0;
}
if(die){
	image_angle+= 15;
	image_xscale += 0.05 * sign(image_xscale);
	image_yscale = image_xscale;
	y-= 3;
}