//Draw the box
draw_sprite_ext(spr_gui,0,offset_x,offset_y,width/32,height/32,0,c_white,1);

//Draw the text god damnit
draw_set_font(fnt_menu)
for (var i = 0; i < array_length(options); i++;) {
	var check = (pos = i);
	var col = check ? c_yellow : c_white
	draw_text_color(offset_x + txt_border, offset_y + txt_border + (txt_sep*i), options[i][0],col,col,col,col,1)
}