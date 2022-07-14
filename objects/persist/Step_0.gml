/// @description Loop

if keyboard_check(vk_escape){
	quitGame+=0.02
} else {
	if quitGame > 0 quitGame-=0.02
}
if quitGame > 1 game_end()

if keyboard_check_pressed(vk_control) and !global.Menu {
	instance_create_layer(x,y,layer,obj_menu)
	global.Menu = true;
}
