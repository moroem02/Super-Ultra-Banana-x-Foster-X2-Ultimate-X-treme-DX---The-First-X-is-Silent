if(speed != 0){
	rspeed += 5;
	speed = 0;
	with(other){
		instance_destroy()
	}
}