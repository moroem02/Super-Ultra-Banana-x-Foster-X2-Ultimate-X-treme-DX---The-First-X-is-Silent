if(room == rm_Level_1){
	global.respawn_x = 320;
	global.respawn_y = 304;
}
else if(room == rm_Level_2){
	global.respawn_y =1536;
	global.respawn_x = 320;
}

if(room == rm_start){
	audio_play_sound(snd_catwav,1,true);	
}