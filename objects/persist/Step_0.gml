/// @description Loop

if keyboard_check(vk_escape){
	quitGame+=0.01
} else {
	if quitGame > 0 quitGame-=0.01
}
if quitGame > 1 game_end()

if keyboard_check_pressed(vk_control) && !instance_exists(obj_plr) && !instance_exists(obj_menu) {
	instance_create_layer(x,y,layer,obj_menu)
}
