/// @description
if (char == DIAG_CHAR_INFO) {
	//Special case! draw a special variation 
	draw_sprite(spr_diag, 1, x, y)
	draw_text_scribble_ext(x+border, y+border, text, width+123)
} else {
	//Text render
	draw_text_scribble_ext(x+133+border, y+32+border, text, width)
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