if(iframe <1){
	iframe = 25;
	health --;
	audio_play_sound(snd_brohurt,3,false);
	
}
with(other){
	instance_destroy();
}