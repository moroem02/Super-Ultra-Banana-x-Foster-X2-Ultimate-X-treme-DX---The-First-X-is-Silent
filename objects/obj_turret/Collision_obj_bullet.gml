//@desc - destroy turret

if(!other.enemy){
	reload = 500;	
	with(other){
		instance_destroy();	
	}
}
