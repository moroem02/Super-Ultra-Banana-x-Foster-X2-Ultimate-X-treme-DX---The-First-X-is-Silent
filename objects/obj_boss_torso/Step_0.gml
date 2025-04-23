if(phase ==1){
	if(place_meeting(x+speed,y,obj_wall)){
	speed *= -1;
	}
	
	if(timer >= 240 && instance_number(obj_beachBall) == 0){
		speed = 0; 
		var inst = instance_create_layer(x,y,"Instances",obj_beachBall);
		inst.direction = random_range(95,110);
		timer = 0;
	}
		
	if(timer ==0){
		speed = 3;
	}
}

timer ++;