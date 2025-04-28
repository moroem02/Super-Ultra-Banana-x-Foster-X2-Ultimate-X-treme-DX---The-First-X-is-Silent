if(y >= ground_level){
	audio_play_sound(snd_explosion,2,false);
	instance_destroy()
	for (var i = 0; i < 45; i += 1){
		var inst =  instance_create_layer(x,y, "Instances", obj_bullet);
		inst.direction = i * 8;
		
	}
}
if((x <60 || x > 500) || y> 298){
	move_bounce_all(true);
	rot = choose(-2,1,0.5,-0.5,-1,2);
	spd+=0.5;
}
