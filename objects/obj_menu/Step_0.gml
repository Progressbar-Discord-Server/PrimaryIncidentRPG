key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
key_accept = keyboard_check_pressed(vk_enter);

pos += key_down - key_up;

if key_down - key_up != 0 audio_play_sound(snd_btn_focus, 10, 0)

pos = wrapAround(pos,0,array_length(options)-1)

if key_accept {
	if options[pos, 1] != undefined {
		audio_play_sound(snd_btn_click, 10, 0)
		if is_array(options[pos, 1]) {
			createMenu(options[pos, 1])
			instance_destroy()
		} else {
			options[pos, 1]()
		}
	}
}

if keyboard_check_pressed(vk_control) {
	instance_destroy();
	obj_plr.canMove=1
}