/// @description Initialization - THIS IS THE INIT OBJECT!!!
show_debug_message("==================\nPrimary Incident\n==================")
scribble_font_set_default("fnt_dialogue")
draw_set_font(fnt_dialogue)
global.Coins = 0;

global.saveData={
	saveCreatedVersion: version,
	currentRoom: room	
}

room_goto_next()