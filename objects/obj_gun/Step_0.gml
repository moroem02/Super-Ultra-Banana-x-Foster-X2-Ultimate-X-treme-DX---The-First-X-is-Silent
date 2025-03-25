// @desc - gun controls:
if(pause <= 0 && !keyboard_check(ord("X"))){
	if(keyboard_check(vk_left) && !(keyboard_check(vk_up) || keyboard_check(vk_down))){
		direction = 180;
		image_xscale = -1;
		image_yscale = 1;
	}
	else if(keyboard_check(vk_right) && !(keyboard_check(vk_up) || keyboard_check(vk_down))){
		direction = 0;
		image_xscale = 1;
		image_yscale = 1;
	}
	else if(keyboard_check(vk_up)&& !(keyboard_check(vk_left) || keyboard_check(vk_right))){
		direction = 90;
		image_xscale = 1;
		image_yscale = 1;
	}
	else if(keyboard_check(vk_down)&& !(keyboard_check(vk_left) || keyboard_check(vk_right))){
		direction = 270;
		image_xscale = 1;
		image_yscale = 1;
	}
	else if(keyboard_check(vk_right) && keyboard_check(vk_up)){
		direction = 45;
		image_xscale = 1;
		image_yscale = 1;
		pause = 7;
	}
	else if(keyboard_check(vk_left) && keyboard_check(vk_up)){
		direction = 135;
		image_yscale = -1;
		pause = 7;
	}
	else if(keyboard_check(vk_right) && keyboard_check(vk_down)){
		direction = 315;
		image_xscale = 1;
		image_yscale = 1;
		pause = 7;
	}
	else if(keyboard_check(vk_left) && keyboard_check(vk_down)){
		direction = 225;
		image_xscale = 1;
		image_yscale = 1;
		pause = 7;
	}
}
pause --;