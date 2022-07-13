key_up = keyboard_check_pressed(vk_up);
key_down = keyboard_check_pressed(vk_down);
key_accept = keyboard_check_pressed(vk_enter);

pos += key_down - key_up;

pos = loop(pos,0,array_length(options)-1)

if key_accept {
	if options[pos, 1] != noone {
		if is_array(options[pos, 1]) {
			script_execute(createMenu,options[pos, 1]);
			instance_destroy()
		} else {
			script_execute(options[pos, 1])
		}
	}
}

if keyboard_check_pressed(vk_shift) {
	instance_destroy();
	global.Menu = false;
}