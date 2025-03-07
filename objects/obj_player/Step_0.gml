//@desc - player controls + collision


//get player input


var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_space);


//calc ulate movement
var _move = key_right - key_left;

hsp = _move * walksp;
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
