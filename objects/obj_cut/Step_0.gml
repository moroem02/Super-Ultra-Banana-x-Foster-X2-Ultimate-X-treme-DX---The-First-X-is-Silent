var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

layer_background_index(back_id, stor);
if(image_index > 28){
	image_xscale = 0;
	image_yscale = 0;
}