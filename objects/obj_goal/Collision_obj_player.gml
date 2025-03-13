obj_control.l +=1
if(obj_control.l >= array_length(obj_control.levels)){
	room_goto(Room3);
}
else{
	room_goto(obj_control.levels[obj_control.l]);
}