if(room !=rm_end && room != rm_start){
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
		instance_create_layer(global.respawn_x,global.respawn_y, "Instances", obj_player);		
		
	}
}
global.resp --;