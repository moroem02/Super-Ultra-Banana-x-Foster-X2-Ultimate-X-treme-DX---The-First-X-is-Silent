//@desc - gun controls:

if(keyboard_check(vk_left)){
	direction = 180;
	image_angle = 180;
}
if(keyboard_check(vk_right)){
	direction = 0;
	image_angle = 0;
}
if(keyboard_check(vk_up)){
	direction = 90;
	image_angle = 90;
}
if(keyboard_check(vk_down)){
	direction = 270;
	image_angle = 270;
}
if(keyboard_check(vk_right) && keyboard_check(vk_up)){
	direction = 45;
	image_angle = 45;
}
if(keyboard_check(vk_left) && keyboard_check(vk_up)){
	direction = 135;
	image_angle = 135;
}
if(keyboard_check(vk_right) && keyboard_check(vk_down)){
	direction = 315;
	image_angle = 315;
}
if(keyboard_check(vk_left) && keyboard_check(vk_down)){
	direction = 225;
	image_angle = 225;
}