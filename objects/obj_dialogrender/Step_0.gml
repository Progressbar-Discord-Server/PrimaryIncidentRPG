/// @description
if keyboard_check_pressed(vk_enter){
	if string_length(targText) == string_length(text) {
		scanText()
	} else {
		text = targText	
	}
}

if textWait[1] <= 0 {
	if string_length(targText) != string_length(text) {
		text+= string_char_at(targText, textCharPos)
		textCharPos++
		textWait[1] = textWait[0]
	}
}
textWait[1]--