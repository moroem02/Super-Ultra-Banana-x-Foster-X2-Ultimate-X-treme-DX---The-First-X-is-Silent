obj_player.x = x;
obj_player.y = y;

if(instance_number(obj_crusher)>0){
	obj_crusher.go = false;	
}
if(image_xscale < 300){
	image_xscale += 5;
	image_yscale += 5;
}
else{
	
	x = 2944;
	y = 128;
	instance_destroy();
	obj_player.x = 	2944;
	obj_player.y = 	228;
	
}