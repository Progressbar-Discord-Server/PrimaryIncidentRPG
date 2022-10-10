function define_achievements() {
	global.ach = [
		{name: "test", description: "testing", show: true},
		{name: "test again", description: "more testing", show: true},
		{name: "not a test", description: "i swear it's not a test", show: false}
	]
}

function grant_achievement(achievement_id) {
	var aID = achievement_id
	
	if (global.saveData.claimedAchievements[aID] == true) {show_debug_message("player already has this achievement"); return 0;}
	
	if aID > array_length(global.ach)-1 {show_error("Requested achievement ID is out of scope, requested " + string(aID) + ", but array has only " + string(array_length(global.ach)-1) + " entries.", true)}
	
	global.saveData.claimedAchievements[aID] = true
	 
	//Show achievement on HUD
	with persist {
		local_achievement.name = global.ach[aID].name
		event_user(0)
	}
}