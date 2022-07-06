/// @description
//Text render
draw_text(x+133, y+23, text)

//Icon and text render
switch char {
	case DIAG_CHAR_UNKNOWN: {
		draw_text(x+133, y, "???")
	} break;
	case DIAG_CHAR_PLACEHOLDER: {
		draw_text(x+133, y, "[PLACEHOLDER]")
	} break;
	case DIAG_CHAR_INFO: {
		draw_text(x+133, y, "[INFO]")
	} break;
	default: {
		draw_text(x+133, y, "CHAR NOT DEFINED IN DRAWGUI!!!")
	} break;
}