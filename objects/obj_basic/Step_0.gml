
vsp += 0.3;
if(place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x,y+sign(vsp),obj_wall)) {
			y += sign(vsp);
			
	}
	vsp = 0;
}


if(dead){
	sprite_index = spr_basi;
	image_xscale += 0.05;
	image_yscale = image_xscale;
	y-= 4;
	speed = 0;
	gun.breakd = true;
	
}
else{
	y += vsp;
}


if(place_meeting(x+sign(speed),y+30,obj_wall)){
		speed *= -1;
}


if(speed != 0){
	image_xscale = -sign(speed);
	
}
image_angle += rspeed;

if(gun.breakd){
	speed = 3 * sign(image_xscale);
	if(image_xscale < 0){
		instance_create_layer(x-6, y-8,"Instances",obj_gravitypart);
	}
	else{
		instance_create_layer(x+6, y-8,"Instances",obj_gravitypart);
	}
}
