if(!dead && other.iframe < 1 && gun.image_index != 1){
	other.hits -= 1;	
	other.vsp = -3;
	other.iframe = 15;
}