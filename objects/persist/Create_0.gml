/// @description Initialization - THIS IS THE INIT OBJECT!!!
randomize() //random moment
audio_group_load(audiogroup_default)
show_debug_message("==================\n Primary Incident\n==================")
scribble_font_set_default("fnt_dialogue")
draw_set_font(fnt_dialogue)

//Rebind Controls
//Move
keyboard_set_map(ord("A"), vk_left)
keyboard_set_map(ord("W"), vk_up)
keyboard_set_map(ord("S"), vk_down)
keyboard_set_map(ord("D"), vk_right)

//Interaction
keyboard_set_map(ord("Z"), vk_enter)
keyboard_set_map(ord("X"), vk_shift)
keyboard_set_map(ord("C"), vk_control)

//Save data
global.saveData={
	saveCreatedVersion: version,
	settings: {
		volume: 1,
		windowMode: 0,
		RPC:0
	},
	currentRoom: room_get_name(room),
	coins: 0,
	claimedAchievements:[],
	inventroy:[],
	party:["lol-guy"],
	battlesWon:{}
}

battleConf = {
	plrA: DIAG_CHAR_LOLGUY,
	plrB: DIAG_CHAR_BURNING,
	against: DIAG_CHAR_CHRIS,
	returnRoom: 0
}

define_achievements()

quitGame=0

local_achievement = {stage: 0, name: "achievement name", xx: 643}

room_goto_next()