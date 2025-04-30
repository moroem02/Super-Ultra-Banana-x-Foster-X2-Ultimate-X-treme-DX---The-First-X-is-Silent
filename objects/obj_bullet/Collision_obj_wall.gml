// @desc - destroys when colides. 
if(room== rm_boss1){
	if(!(x> 280 && x<372 && y<287) && !other.touching_break){
		instance_destroy();
	}
}
else if(!other.touching_break){
	instance_destroy();
}