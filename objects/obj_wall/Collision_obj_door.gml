if(timer < 2){
	door = true;
}
if(other.go && door){
	if(image_angle == 90){
		x += 2;
	}
	else{
		y -= 2;	
	}
}
