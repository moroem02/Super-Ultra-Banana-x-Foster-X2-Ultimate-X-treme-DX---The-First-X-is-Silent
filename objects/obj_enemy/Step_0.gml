//@description core enemyt logic


//animations

vsp += 0.3;
if(place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x,y+sign(vsp),obj_wall)) {
			y += sign(vsp);
			
	}
	vsp = 0;
}


if(speed == 0){
	sprite_index = spr_enemy;
	image_xscale += 0.05;
	image_yscale = image_xscale;
	y-= 4;
	
	
}
else{
	sprite_index = spr_enemy_run;
	y += vsp;
}


if(place_meeting(x+speed,y,obj_wall)){
		speed *= -1;
}


if(speed != 0){
	image_xscale *= sign(speed);
	
}
image_angle += rspeed;