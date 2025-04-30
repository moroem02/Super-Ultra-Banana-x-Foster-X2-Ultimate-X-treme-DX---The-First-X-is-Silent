audio_play_sound(snd_death,1,false);
with(obj_gun){
	instance_destroy();
	instance_destroy();
}
if(room == rm_boss1){
	with(obj_boss_torso){
	health = 5;
	phase = 1;
	left_leg.die = false;
	right_leg.die = false;
	left_arm.die = false;
	right_arm.die = false;	
	left_leg.x = x+12;
	right_leg.x = x + 15;
	left_arm.x = x+2;
	right_arm.x = x + 20;
	left_leg.y = 333;
	right_leg.y = 333;
	left_arm.y = 310;
	right_arm.y = 309;
	}
	room_goto(rm_bosscut);
}