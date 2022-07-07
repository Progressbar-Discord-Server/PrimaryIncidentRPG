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
	case DIAG_CHAR_INFO: {} break;
	case DIAG_CHAR_PLACEHOLDER: {
		draw_text(x+133+char_border, y + char_border, "[PLACEHOLDER]")
		draw_sprite_ext(spr_placeholder_diag, charexp, x+16, y+16, 1, 1, 0, c_white, 1)
	} break;
	case DIAG_CHAR_LOLGUY: {
		draw_text(x+133+char_border, y + char_border, "lol man")
		draw_sprite_ext(spr_lolguy_diag, 0, x+16, y+16, 1, 1, 0, c_white, 1)
	} break;
	default: {
		draw_text(x+133+char_border, y + char_border, "CHAR NOT DEFINED IN DRAWGUI!!!")
		draw_sprite_ext(spr_placeholder_diag, charexp, x+16, y+16, 1, 1, 0, c_white, 1)
	} break;
}