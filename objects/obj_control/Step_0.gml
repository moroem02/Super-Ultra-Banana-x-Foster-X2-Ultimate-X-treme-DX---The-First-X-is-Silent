if(room !=rm_end && room != rm_start  && room != rm_intro &&room != rm_map && room != rm_bosscut){
	if(instance_number(obj_player) == 0){
	
		global.resp = 5;
		
		for(var i = 0; i < array_length(global.breakables); i+= 5){
			var inst = instance_create_layer(global.breakables[i],global.breakables[i+1], "Instances", obj_break);
			inst.image_angle = global.breakables[i+2];
			inst.direction = global.breakables[i+2];
			inst.image_xscale = global.breakables[i+3];
			inst.image_yscale = global.breakables[i+4];
			var inst2 = instance_create_layer(global.breakables[i],global.breakables[i+1], "Instances", obj_wall);
			inst2.image_angle = global.breakables[i+2];
			inst2.direction = global.breakables[i+2];
			inst2.image_xscale = global.breakables[i+3]*4;
			inst2.image_yscale = global.breakables[i+4]*2;
			
		}
		for(var i = 0; i < array_length(global.doors); i+= 5){
			var inst = instance_create_layer(global.doors[i],global.doors[i+1], "Instances", obj_door);
			inst.image_angle = global.doors[i+2];
			inst.direction = global.doors[i+2];
			inst.image_xscale = global.doors[i+3];
			inst.image_yscale = global.doors[i+4];
			var inst2 = instance_create_layer(global.doors[i],global.doors[i+1], "Instances", obj_wall);
			inst2.image_angle = global.doors[i+2];
			inst2.direction = global.doors[i+2];
			inst2.image_xscale = global.doors[i+3]*4;
			inst2.image_yscale = global.doors[i+4]*4;
			
		}
		
		global.breakables = [];
		global.doors = [];
		if(room == rm_Level_3){
			obj_crusher.go = false;
			obj_crusher.x = -64
		}
		
		instance_create_layer(global.respawn_x,global.respawn_y, "Instances", obj_gun);	
		instance_create_layer(global.respawn_x,global.respawn_y, "Instances", obj_player);	
		
		
			
	}
}
global.resp --;

if(room == rm_Level_1 && !(audio_is_playing(snd_lab1) || audio_is_playing(snd_lab2))){
	audio_play_sound(snd_lab2, 1, true)	
}
if(keyboard_check(ord("B"))&&keyboard_check(ord("A"))&&keyboard_check(ord("L")) && instance_number(obj_beachBall) < 6){
	instance_create_layer(obj_player.x+5,obj_player.y-440,"Instances",obj_beachBall);
}

if(keyboard_check(ord("B"))&&keyboard_check(ord("A"))&&keyboard_check(ord("N"))){
	instance_create_layer(obj_player.x+150,obj_player.y+5,"Instances",obj_bananna);
}
if(room == rm_boss1){
	angel ++;
	if(angel> 600){
		instance_create_layer(0,-60,"Instances",obj_angel);
		angel = 0;
	}
}