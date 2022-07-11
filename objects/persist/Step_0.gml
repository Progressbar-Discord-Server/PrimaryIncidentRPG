/// @description Loop

if keyboard_check(vk_escape){
	quitGame+=0.01
} else {
	if quitGame > 0 quitGame-=0.01
}
if quitGame > 1 game_end()
