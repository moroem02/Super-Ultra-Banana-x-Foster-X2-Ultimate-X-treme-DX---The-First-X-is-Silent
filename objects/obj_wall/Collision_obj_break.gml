touching_break = true;
if(other.destroy){
	instance_destroy();
	with(other){
		instance_destroy();
	}
}