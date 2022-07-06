/// @description
if (place_meeting(x, y, obj_plr)){
	if hasColided=0 {
		interactEvent()
		hasColided=1
	}
} else {
	if hasColided=1 {
		hasColided=0
	}
}