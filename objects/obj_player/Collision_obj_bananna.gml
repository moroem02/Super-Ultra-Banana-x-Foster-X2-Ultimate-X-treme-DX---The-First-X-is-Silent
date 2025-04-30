if(other.image_index != 1){
	if(instance_number(obj_ba)>0){
		obj_ba.image_alpha = 1;
	}
	audio_play_sound(snd_goopy_slime,1,false);
}
else{
	var inst = instance_create_layer(x,y-30,"Instances",obj_beachBall);
	inst.direction = 20;
}

with(other){
	instance_destroy();
}