//@desc - taking damage
if(enemy){
	other.vsp = -3;
	if(other.iframe <1){
		other.hits -= 1;
	}
	other.iframe = 15; 
	instance_destroy();
}