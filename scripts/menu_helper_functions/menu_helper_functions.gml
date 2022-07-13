function createMenu(arr){
	with (instance_create_layer(x,y,layer,obj_menu))
	{
		options = arr;
		
		width = 13.5*find_longest_string_length_2d(options,0) + (txt_border*2);
		height = (txt_sep*array_length(options)) + (txt_border*2);
	}
}