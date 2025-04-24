
if(phase <= 0){
	direction = point_direction(other.x, other.y, x, y);
	spd += 0.5;
	speed = spd;
	rot = choose(-2,1,0.5,-0.5,-1,2);
	if(x < other.x){
		x-=3;
	}
	else{
		x+=3;
	}
	if(y <other.y){
		y-=3;
	}
	else{
		y+=3;
	}
}