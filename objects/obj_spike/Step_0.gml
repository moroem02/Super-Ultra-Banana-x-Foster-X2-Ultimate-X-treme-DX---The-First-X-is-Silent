if(place_meeting(x+2,y,obj_door) || place_meeting(x-2,y,obj_door) ){
	if(instance_nearest(x,y,obj_door).go){
		if(	instance_nearest(x,y,obj_door).image_angle == 90){
			x+=2	
		}
		else{
			y-= 2;	
		}
	}
}