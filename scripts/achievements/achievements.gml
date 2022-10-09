function define_achievements() {
	global.ach = [
		{name: "test", description: "testing", has: false, show: true},
		{name: "test again", description: "more testing", has: true, show: true},
		{name: "not a test", description: "i swear it's not a test", has: false, show: false}
	]
}

function grant_achievement(achievement_id) {
	var aID = achievement_id
	
	if aID > array_length(global.ach) {show_error("Requested achievement ID is out of scope, requested " + string(aID) + ", but array has only " + string(array_length(global.ach)) + " entries.", true)}
	
	with persist event_user(0)
}