/// @description
draw_set_halign(fa_center)
draw_text(x, y, "Primary Incident RPG Temporary Boot Menu\n\n\n\n\n\n\n\n\n\n\n\n[1] New Save\n[2] Load Save\n[3] Delete Save")
draw_set_halign(fa_left)

if keyboard_check_pressed(ord("1")) saveData()
if keyboard_check_pressed(ord("2")) room_goto_next()
if keyboard_check_pressed(ord("3")) room_goto_next()