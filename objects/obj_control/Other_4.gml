if(room == rm_Level_1){
	global.respawn_x = 320;
	global.respawn_y = 304;
	audio_play_sound(snd_lab1,1,false);
}
else if(room == rm_Level_2){
	global.respawn_y =1520;
	global.respawn_x = 320;
	audio_play_sound(snd_wind,1,true);
}
else if(room == rm_Level_3){
	global.respawn_y =928;
	global.respawn_x = 256;
	audio_play_sound(snd_wind,1,true);
}
else if(room == rm_Level_4){
	global.respawn_x = 120;
	global.respawn_y = 204;
}
else if(room == rm_boss1){
	global.respawn_x = 144;
	global.respawn_y = 320;
	audio_play_sound(snd_placeholder,1,true);
}

if(room == rm_start || room = rm_end){
	audio_play_sound(snd_catwav,1,true);	
}
if(room == rm_map){
	obj_camera.x = 320;
}