direction = point_direction(other.x, other.y, x, y);
rot = choose(-2,1,0.5,-0.5,-1,2);
with(other){
	instance_destroy();
}