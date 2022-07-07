/// @description
if keyboard_check_pressed(vk_enter){
	if typist.get_state() == 1 {
		typist.reset();
		scanText()
	} else {
		typist.skip();
	}
}

if (char == DIAG_CHAR_INFO) {
	//Special case! draw a special variation 
	draw_sprite(spr_diag, 1, x, y)
	scribble(targText).wrap(width+123).draw(x+border, y+border, typist)
} else {
	//Text render
	scribble(targText).wrap(width).draw(x+133+border, y+32+border, typist)
}

//Icon and text render
switch char {
	case DIAG_CHAR_UNKNOWN: {
		draw_text(x+133+char_border, y + char_border, "???")
	} break;
	case DIAG_CHAR_PLACEHOLDER: {
		draw_text(x+133+char_border, y + char_border, "[PLACEHOLDER]")
	} break;
	case DIAG_CHAR_INFO: {
		//draw_text(x+5+char_border, y + char_border, "[INFO]")
	} break;
	default: {
		draw_text(x+133+char_border, y + char_border, "CHAR NOT DEFINED IN DRAWGUI!!!")
	} break;
}