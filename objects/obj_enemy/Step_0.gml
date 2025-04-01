//@description core enemyt logic


//animations
if(!place_meeting(x,y+1,obj_wall)){
	//in air
	image_speed = 0;

}

else{

	image_speed = 1;
	if(speed == 0){
		sprite_index = spr_enemy;
		
	}
	else{
		sprite_index = spr_enemy_run;
	}
}

if(speed != 0){
	image_xscale = sign(speed);
	
}