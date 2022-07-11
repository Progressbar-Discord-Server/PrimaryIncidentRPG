/// @description Initialization - THIS IS THE INIT OBJECT!!!
show_debug_message("==================\n Primary Incident\n==================")
scribble_font_set_default("fnt_dialogue")
draw_set_font(fnt_dialogue)

global.saveData={
	saveCreatedVersion: version,
	currentRoom: room,
	coins: 0
}

room_goto_next()