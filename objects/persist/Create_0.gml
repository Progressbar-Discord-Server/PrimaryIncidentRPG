/// @description Initialization
room_goto(rm_test);

show_debug_message("==================\nPrimary Incident\n==================")
scribble_font_set_default("fnt_dialogue")
draw_set_font(fnt_dialogue)
global.Coins = 0;

instance_create_layer(x,y,layer,camera)