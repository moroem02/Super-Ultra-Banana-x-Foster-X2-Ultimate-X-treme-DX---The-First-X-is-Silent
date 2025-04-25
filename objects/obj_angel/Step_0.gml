y += 2;
if(left){
	if(x> startx-10){
		x--;
	}
	else{
		left = false;
	}
	
}
else{
	if(x< startx+10){
		x++;
	}
	else{
		left = true;
	}
	
	
}