if(i<array_length(dia)){
	
draw_text(x+15,y+15,dia[i]);
if(keyboard_check_pressed(vk_space)){
	i++;	
}
}
else{
	room_goto(rm_boss1);
	
}