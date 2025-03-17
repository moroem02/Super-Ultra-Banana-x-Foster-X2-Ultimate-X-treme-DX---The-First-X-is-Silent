//@desc - taking damage
if(enemy){
	other.vsp = -3;
	other.hits -= 1;
	instance_destroy();
}