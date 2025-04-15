

if(image_index != 0){
	timer -= 1;
}
if(timer<0){
	image_alpha -= 0.01;	
}
if(image_alpha <=0){
	instance_destroy();	
}