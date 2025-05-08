
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
	else{
		var lay_id = layer_get_id("Background");
		var back_id = layer_background_get_id(lay_id);
		layer_background_sprite(back_id, spr_banan)
		layer_background_stretch(back_id, true)
		stop = true;
	}
	alarm[0] = 80;
}

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

layer_background_index(back_id, obj_control.l);