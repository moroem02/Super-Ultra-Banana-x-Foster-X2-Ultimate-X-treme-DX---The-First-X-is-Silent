
instance_destroy();
if(other.vsp > 0){
	other.x = instance_nearest(other.x, other.y, obj_portal).x + 33;
}
else{
	
	other.x = instance_nearest(other.x, other.y, obj_portal).x - 33;
}
other.y =instance_nearest(other.x, other.y, obj_portal).y;
instance_create_layer(x,y,"Instances",obj_portal)