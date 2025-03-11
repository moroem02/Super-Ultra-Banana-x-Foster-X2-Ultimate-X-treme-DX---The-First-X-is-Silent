// @desc - player controls + collision


//get player input

var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);

var key_jump = keyboard_check_pressed(vk_space);
//calc ulate movement


var _move = key_right - key_left;

if(horiframes == 0 || place_meeting(x,y+5,obj_wall)){
	hsp = _move * walksp;
	horiframes = 0;
}
else if(horiframes < 0){
	horiframes += 1;
	hsp = -7;
}
else{
	horiframes -= 1;
	hsp = 7;	
}
vsp += grv;

//Jump



if(place_meeting(x,y+1,obj_wall)){
		currJumps = 0;
}

if(key_jump && currJumps < maxJumps){
		vsp = -jumpsp;
		currJumps += 1
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
	vsp = 0;
}
y += vsp;
x += hsp;

//animations
if(!place_meeting(x,y+1,obj_wall)){
	//in air
	sprite_index = spr_player;
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
		sprite_index = spr_player
		
	}
	else{
		sprite_index = spr_player;
	}
}

if(hsp != 0){
	image_xscale = sign(hsp);
}

// shooting
if(keyboard_check(ord("Z")) && reload <= 0){
	var inst = instance_create_layer(obj_gun.x, obj_gun.y, "Instances", obj_bullet);
	inst.direction = obj_gun.direction;
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
		
	}
	if(obj_gun.direction == 180 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		horiframes = 15;
		
	}
	if(obj_gun.direction == 90 && !place_meeting(x,y+20,obj_wall) && recoils > 0){
		recoils  -=1;	
		vsp = 7;
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
	
	
	if(obj_gun.direction == 225 && place_meeting(x,y+20,obj_wall) && recoils > 0){
		vsp = -6;
		y-= 5;
		horiframes = 15;
	}
	if(obj_gun.direction == 315 && place_meeting(x,y+20,obj_wall) && recoils > 0){
		vsp = -6;
		y-= 5;
		horiframes = -15;
	}
	reload = 10;
}
reload --;
obj_gun.x = x+2;
obj_gun.y = y;