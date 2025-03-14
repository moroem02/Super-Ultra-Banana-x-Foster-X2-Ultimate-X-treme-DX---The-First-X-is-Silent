
if(image_index != 1){
	audio_play_sound(snd_stave,1,false);
	repeat(50){
	instance_create_layer(x,y,"Instances", obj_part_green);	
	}
	image_index = 1;
	global.respawn_x = x;
	global.respawn_y = y - 5;
}