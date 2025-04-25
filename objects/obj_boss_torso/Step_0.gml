if(phase ==1){
	
	
	if(timer >= 240 && instance_number(obj_beachBall) == 0){
		speed = 0; 
		var inst = instance_create_layer(x,y-30,"Instances",obj_beachBall);
		inst.direction = random_range(130,165);
		inst.speed = 5;
		timer = -15;
		speed = spd;
	}
		
	
		
	
	if(timer< 0){
		left_arm.thro = true;
		right_arm.thro = true;
	}
	
	if(instance_number(obj_beachBall) != 0 && x == obj_beachBall.x){
		x =	obj_beachBall.x;
	}
	if(x > 340 &&x < 612 && instance_number(obj_beachBall) != 0 && distance_to_object(obj_beachBall) > 50){
		if(obj_beachBall.x < x){
			speed = -spd;
		}
		else{
			speed = spd;
		}
	}
	else if(place_meeting(x+speed,y,obj_wall)){
		speed *= -1;
	}
	if(instance_number(obj_beachBall) == 0 || timer < 2){
	timer += random_range(1,3); 
	}
	if(health < 4){
		
		
		reload ++;
		if(reload > 120){
				reload = 0;
				instance_create_layer(x+12,y+26,"Instances",obj_bananna);
				
		}
	}
	if(health == 5){
	left_leg.x = x+12;
	right_leg.x = x + 15;
	left_arm.x = x+2;
	right_arm.x = x + 20;
	}
	else if(health == 4){
		left_leg.x = x+12;
		right_leg.x = x + 15;
		left_arm.x = x+2;
		right_arm.die = true;
		if(blood){
		instance_create_layer(x+23, y+15,"Instances",obj_gravitypart);
		}
	}
	else if(health == 3){
		left_leg.x = x+12;
		right_leg.x = x + 15;
		left_arm.die = true;
		if(blood){
		instance_create_layer(x+23, y+15,"Instances",obj_gravitypart);
		instance_create_layer(x+4, y+15,"Instances",obj_gravitypart);
		}
	}
	else if(health == 2){
		left_leg.die = true;
		right_leg.x = x + 15;
		if(blood){
		instance_create_layer(x+23, y+15,"Instances",obj_gravitypart);
		instance_create_layer(x+4, y+15,"Instances",obj_gravitypart);
		instance_create_layer(x+4, y+46,"Instances",obj_gravitypart);
		}
	}
	else if(health == 1){
		
		right_leg.die = true;
		if(blood){
		instance_create_layer(x+23, y+15,"Instances",obj_gravitypart);
		instance_create_layer(x+4, y+15,"Instances",obj_gravitypart);
		instance_create_layer(x+4, y+46,"Instances",obj_gravitypart);
		instance_create_layer(x+23, y+46,"Instances",obj_gravitypart);
		}
		vsp+= 0.3;
	
		if(place_meeting(x,y+vsp,obj_wall)){
		while(!place_meeting(x,y+sign(vsp),obj_wall)) {
				y += sign(vsp);
			
		}
			vsp = -7;
		}
	
		y += vsp;
			
	}
	else{
		phase = 0;
	
	}
}
else if(phase == 0){
	image_xscale += 0.05 * sign(image_xscale);
	image_yscale = image_xscale;
	y-= 3;
	image_angle+= 15;
	speed = 0;
}


iframe --;