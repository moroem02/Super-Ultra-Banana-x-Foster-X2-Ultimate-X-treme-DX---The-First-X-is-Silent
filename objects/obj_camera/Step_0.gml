
if(!stop){
	if(obj_control.l == 0){
		stop = true;
		
	}
	else if(obj_control.l == 1){
		if(x>= 564){
			stop = true;	
		}
		x+= 10;
	}
	else if(obj_control.l == 2){
		if(x>= 1100){
			stop = true;	
		}
		x+= 10;
	}
	alarm[0] = 80;
}

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

layer_background_index(back_id, obj_control.l);