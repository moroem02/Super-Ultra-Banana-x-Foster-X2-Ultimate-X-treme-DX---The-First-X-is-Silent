//desc - hud

if(instance_number(obj_player) != 0){
	var vx = camera_get_view_x(view_camera[1]);
	var vy = camera_get_view_y(view_camera[1]);

	//health
	for(var i = 0; i < obj_player.hits; i++){
		draw_sprite(spr_health,0,vx+15+(i*15),vy+370);
	}

}

if(room == rm_end){
	draw_set_font(Font1);
	draw_text(100,220,"Time: "+string(round(time/ 60))+" Seconds.");
	
	
}
if(timar && room != rm_end){
	draw_set_font(font3);
	var vx = camera_get_view_x(view_camera[1]);
	var vy = camera_get_view_y(view_camera[1]);

	draw_text(vx+12,vy+12,string(round(time/ 60)));
}