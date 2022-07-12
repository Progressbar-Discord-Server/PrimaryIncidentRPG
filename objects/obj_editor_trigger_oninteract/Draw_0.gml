/// @description
if place_meeting(x, y, obj_plr){
	if !isHidden draw_text(x+8, y-8, "[Z]")	
	
	if keyboard_check_pressed(vk_enter){
		interactEvent()	
	}
}