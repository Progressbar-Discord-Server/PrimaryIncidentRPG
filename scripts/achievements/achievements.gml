// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_achievements() {
	global.ach = [
		{name: "test", description: "testing", has: false},
		{name: "test again", description: "more testing", has: true},
		{name: "not a test", description: "i swear it's not a test", has: false}
	]
}

function grant_achievement(achievement_id) {
	var aID = achievement_id
	
	if aID > array_length(global.ach) {show_error("Requested achievement ID is out of scope, requested " + string(aID) + ", but array has only " + string(array_length(global.ach)) + " entries.", true)}
}