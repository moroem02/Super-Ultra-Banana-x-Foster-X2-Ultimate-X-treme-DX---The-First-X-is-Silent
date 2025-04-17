// @desc - player controls + collision


//get player input

var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);

var key_jump = keyboard_check_pressed(vk_space);
//calc ulate movement

var _move = 0;

if(mt>0.1){
	_move = key_right - key_left;
}

if(key_left||key_right||key_jump){
	mt += 0.05;	
}
else{
	mt = 0;
}

if(horiframes == 0 || place_meeting(x,y+5,obj_wall)){
	hsp = _move * walksp;
	horiframes = 0;
}
else if(horiframes < 0){
	horiframes += 1;
	hsp = -9;
}
else{
	horiframes -= 1;
	hsp = 9;	
}
if(horiframes/1.2 <= 1){
	vsp += grv;
}
else if(vsp < 0){
	
	vsp += grv/1.5;	
}
//Jump



if(place_meeting(x,y+1,obj_wall)){
		currJumps = 0;
}

if(key_jump && currJumps < maxJumps){
		vsp = -jumpsp;
		currJumps += 1
		audio_play_sound(snd_whoo,2,false);
}

//hor. collision
if(place_meeting(x+hsp,y,obj_wall)){
	while(!place_meeting(x+sign(hsp),y,obj_wall)) {
			x += sign(hsp);
	}
	hsp = 0;
}



//vert. collision
if(place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x,y+sign(vsp),obj_wall)) {
			y += sign(vsp);
			
	}
	ground_poun = false;
	last = 0;
	vsp = 0;
}
y += vsp;
x += hsp;

//animations
if(!place_meeting(x,y+1,obj_wall)){
	//in air
	sprite_index = spr_playerjump;
	image_speed = 0;
	
	
	if(vsp > 0){
		image_index = 1;	
	}
	else{
		image_index = 0;
	}

}

else{
	recoils = 1;
	image_speed = 1;
	if(hsp == 0){
		sprite_index = spr_playera;
		
	}
	else{
		sprite_index = spr_playerrun;
	}
}

if(hsp != 0){
	image_xscale = sign(hsp);
	
}

// shooting
if(keyboard_check(ord("Z")) && reload <= 0){
	audio_play_sound(snd_shoot,2,false);
	if(obj_gun.direction != 90 && obj_gun.direction != 270){
		var inst = instance_create_layer(obj_gun.x +sign(obj_gun.image_xscale)*15, obj_gun.y-1, "Instances", obj_bullet);
	}
	else{
		var inst = instance_create_layer(x , obj_gun.y-5, "Instances", obj_bullet);
	}
	inst.direction = obj_gun.direction;
	inst.enemy = false;
	if(obj_gun.direction == 270 && place_meeting(x,y+20,obj_wall)){
		vsp = -5;
	}
	//updown left
	if(obj_gun.direction == 270 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		vsp = -7;
	}
	if(obj_gun.direction == 0 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		horiframes = -15;
		vsp = 0;
		
	}
	if(obj_gun.direction == 180 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		horiframes = 15;
		vsp = 0;
		
	}
	if(obj_gun.direction == 90 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		vsp = 7;
		ground_poun = true;
	}
	
	//diag
	if(obj_gun.direction == 315 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		vsp = -7;
		horiframes = -15;
	}
	if(obj_gun.direction == 45 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		vsp = 7;
		horiframes = -15;
		
	}
	if(obj_gun.direction == 135 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		horiframes = 15;
		vsp = 7;
		
	}
	if(obj_gun.direction == 225 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		vsp = -7;
		horiframes = 15;
	}
	
	
	if(obj_gun.direction == 225 &&(place_meeting(x,y+20,obj_wall) || place_meeting(x-20,y,obj_wall)) && last != 1){
		vsp = -6;
		y-= 5;
		horiframes = 15;
		last = 1;
	}
	if(obj_gun.direction == 315 && (place_meeting(x,y+20,obj_wall) || place_meeting(x+20,y,obj_wall))&& last != 2){
		vsp = -6;
		y-= 5;
		horiframes = -15;
		last = 2;
	}
	reload = 10;
}
reload --;

if(image_xscale > 0){
	if(obj_gun.direction == 0){
		obj_gun.image_xscale = 1;
		obj_gun.image_angle = 0;
		obj_gun.image_index = 0;
		obj_gun.x = x+16-15;
		obj_gun.y = y+19-23;
	}
	
	else if(obj_gun.direction == 90){
		obj_gun.image_xscale = 1;
		obj_gun.image_index = 0;
		obj_gun.image_angle = 90;
		obj_gun.x = x+20-15;
		obj_gun.y = y+21-23;
	}
	else if(obj_gun.direction ==270){
		obj_gun.image_xscale = -1;
		obj_gun.image_index = 0;
		obj_gun.image_angle = 90;
		obj_gun.x = x+20-15;
		obj_gun.y = y+16-23;
	}
	else if(obj_gun.direction == 180){
		obj_gun.image_xscale = -1;
		obj_gun.image_index = 1;
		obj_gun.image_angle = 0;
		obj_gun.x = x+19-15;
		obj_gun.y = y+18-23;
	}
	else if(obj_gun.direction == 135){
		obj_gun.image_xscale = -1;
		obj_gun.image_index = 0;
		obj_gun.image_angle = 315;
		obj_gun.x = x+21-15;
		obj_gun.y = y+22-23;
	}
	else if(obj_gun.direction == 45){
		obj_gun.image_xscale = 1;
		obj_gun.image_index = 0;
		obj_gun.image_angle = 45;
		obj_gun.x = x+16-15;
		obj_gun.y = y+19-23;
	}
	else if(obj_gun.direction == 315){
		obj_gun.image_xscale = 1;
		obj_gun.image_index = 0;
		obj_gun.image_angle = 315;
		obj_gun.x = x+17-15;
		obj_gun.y = y+16-23;
	}
	else if(obj_gun.direction == 225){
		obj_gun.image_xscale = -1;
		obj_gun.image_angle = 45;
		obj_gun.image_index = 1;
		obj_gun.x = x+20-15;
		obj_gun.y = y+19-23;
	}
	
}
else{
	if(obj_gun.direction == 0){
		obj_gun.image_xscale = 1;
		obj_gun.image_angle = 0;
		obj_gun.image_index = 1;
		obj_gun.x = x+16-38+15;
		obj_gun.y = y+19-23;
	}
	
	else if(obj_gun.direction == 90){
		obj_gun.image_xscale = -1;
		obj_gun.image_index = 0;
		obj_gun.image_angle = -90;
		obj_gun.x = x+20-41+15;
		obj_gun.y = y+23-23;
	}
	else if(obj_gun.direction ==270){
		obj_gun.image_xscale = 1;
		obj_gun.image_index = 0;
		obj_gun.image_angle = 270;
		obj_gun.x = x+20-40+15;
		obj_gun.y = y+16-23;
	}
	else if(obj_gun.direction == 180){
		obj_gun.image_xscale = -1;
		obj_gun.image_index = 0;
		obj_gun.image_angle = 0;
		obj_gun.x = x+19-35+15;
		obj_gun.y = y+18-23;
	}
	else if(obj_gun.direction == 135){
		obj_gun.image_xscale = 1;
		obj_gun.image_index = 0;
		obj_gun.image_angle = 135;
		obj_gun.x = x+21-38+15;
		obj_gun.y = y+22-23;
	}
	else if(obj_gun.direction == 45){
		obj_gun.image_xscale = 1;
		obj_gun.image_index = 1;
		obj_gun.image_angle = 45;
		obj_gun.x = x+16-37+15;
		obj_gun.y = y+20-23;
	}
	else if(obj_gun.direction == 315){
		obj_gun.image_xscale = 1;
		obj_gun.image_index = 1;
		obj_gun.image_angle = 315;
		obj_gun.x = x+17-38+15;
		obj_gun.y = y+18-23;
	}
	else if(obj_gun.direction == 225){
		obj_gun.image_xscale = -1;
		obj_gun.image_angle = 45;
		obj_gun.image_index = 0;
		obj_gun.x = x+20-37+15;
		obj_gun.y = y+16-23;
	}
}	

if(keyboard_check(ord("P")) && keyboard_check(ord("L")) &&keyboard_check(ord("O")) && keyboard_check(ord("K"))){
	plok = true;
}
if(plok){
	sprite_index = spr_plok; 
}
	

//death
if(hits < 1){
	instance_destroy();	
}
iframe -= 1;

if(ground_poun){
	if(instance_number(obj_groundPound) == 0){
		instance_create_layer(x,y+8,"Instances",obj_groundPound);	
	}
	obj_groundPound.x = x;
	obj_groundPound.y = y+8;
	
}
else if(instance_number(obj_groundPound) > 0){
	with(obj_groundPound){
		instance_destroy();
	}
}
iframe -= 1;