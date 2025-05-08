if(room!=rm_pause){
	lastroom = room;
	if(instance_number(obj_player) >0){
		lastx = obj_player.x;
		lasty = obj_player.y;
	}
	else{
		lastx=0;
		lasty = 0;	
	}
	//room_goto(rm_pause);
}
else{
	//room_goto(lastroom);
	
}