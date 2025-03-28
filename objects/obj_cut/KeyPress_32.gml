
if(image_xscale < 1){
	if(stor < 3){
		stor ++;
	}
	else{
		room_goto(rm_map);
	}
}
else{
	image_xscale = 0;
	image_yscale = 0;
	
}