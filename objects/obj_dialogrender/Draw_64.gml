/// @description Rendering + key presses

if keyboard_check_pressed(vk_enter){ //Detects enter press
	if typist.get_state() == 1 { //check if text is done
		if selectionPrompt {
			textArrayPos--
			if selectedOption == 0 {dialogId = dialogs[dialogId,textArrayPos][6];}
			if selectedOption == 1 {dialogId = dialogs[dialogId,textArrayPos][8];}
			textArrayPos=0
		}
		typist.reset(); //clear typist
		scanText() //read next line
	} else {
		typist.skip(); //if it's still typing skip to the end!
	}
}

if selectionPrompt { //execute this only if this is a selection event
	if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_up){
		selectedOption=0
	}
	if keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_down){
		selectedOption=1
	}
	if selectedOption = 0 {
		//Option A is selected
		draw_rectangle_outline(x, y-96, x+256, y-64, c_red, c_gray, 3) 
		
		//Option B is not selected
		draw_rectangle_outline(x, y-52, x+256, y-20, c_dkgray, c_gray, 3) 
	} else {
		//Option A is not selected
		draw_rectangle_outline(x, y-96, x+256, y-64, c_dkgray, c_gray, 3) 
		
		//Option B is selected
		draw_rectangle_outline(x, y-52, x+256, y-20, c_red, c_gray, 3) 
	}
	draw_text(x, y-96, opt1)
	draw_text(x, y-52, opt2)
}

if (char == DIAG_CHAR_INFO) {
	//Special case! draw a special textbox!
	draw_sprite(spr_diag, 1, x, y)
	scribble(targText).wrap(width+123).draw(x+border, y+border, typist) //Draws text
} else {
	//Text render
	scribble(targText).wrap(width).draw(x+133+border, y+32+border, typist)
}

//Icon and text render
switch char {
	case DIAG_CHAR_UNKNOWN: {
		draw_text(x+133+char_border, y + char_border, "???")
	} break;
	case DIAG_CHAR_INFO: {} break; //Don't draw anything - Cannot remove this or it goes to default.
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