/// @description
draw_set_font(fnt_dialogue);
//Text render
draw_text_ext(x+133+border, y+32+border, text, 15, width)

//Icon and text render
switch char {
	case DIAG_CHAR_UNKNOWN: {
		draw_text(x+133+char_border, y + char_border, "???")
	} break;
	case DIAG_CHAR_PLACEHOLDER: {
		draw_text(x+133+char_border, y + char_border, "[PLACEHOLDER]")
	} break;
	case DIAG_CHAR_INFO: {
		draw_text(x+133+char_border, y + char_border, "[INFO]")
	} break;
	default: {
		draw_text(x+133+char_border, y + char_border, "CHAR NOT DEFINED IN DRAWGUI!!!")
	} break;
}