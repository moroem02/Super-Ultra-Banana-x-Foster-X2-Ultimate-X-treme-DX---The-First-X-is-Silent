obj_player.x = x;
obj_player.y = y;

if(instance_number(obj_crusher)>0){
	obj_crusher.go = false;	
}
if(image_xscale < 300){
	image_xscale += 4;
	image_yscale += 4;
}
else{
	
	x = 2944;
	y = 432;
	instance_destroy();
	obj_player.x = 	2944;
	obj_player.y = 	432;
	
}