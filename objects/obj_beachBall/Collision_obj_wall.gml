move_bounce_all(true);
rot = choose(-2,1,0.5,-0.5,-1,2);
if(place_meeting(x,y+speed,obj_wall)){
	instance_destroy()
	for (var i = 0; i < 45; i += 1){
		var inst =  instance_create_layer(x,y, "Instances", obj_bullet);
		inst.direction = i * 8;
	}
}