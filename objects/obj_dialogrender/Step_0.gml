/// @description
if keyboard_check_pressed(vk_enter){
	if string_length(targText) == string_length(text) {
		scanText()
	} else {
		text = targText	
	}
}

if textWait[1] <= 0 and pauseTimer <= 0 {
	if string_length(targText) != string_length(text) {
		if punctuationCheck() {
			pauseTimer = pauseTime
		}
		text+= string_char_at(targText, textCharPos);
		textCharPos++
		textWait[1] = textWait[0]
		audio_play_sound(snd_speak_gen, 10, 0)
	}
}
textWait[1]--;
pauseTimer--;