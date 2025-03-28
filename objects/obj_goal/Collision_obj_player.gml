obj_control.l +=1
global.breakables = [];
global.doors = [];
audio_stop_all();
if(obj_control.l >= array_length(obj_control.levels)){
	room_goto(rm_end);
}
else{
	room_goto(rm_map);
}
obj_control.time = get_timer();