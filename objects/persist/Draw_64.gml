/// @description Draw version stuff
draw_set_font(fnt_dialogue)
draw_text_color(16, 16, "version " + version, c_white, c_white, c_white, c_white, 0.5)
draw_text_color(16, 32, "[TEST] coins: " + string(global.saveData.coins), c_white, c_white, c_white, c_white, 0.5)
draw_text_transformed_color(0, 0, "Quitting" + string_repeat(".", (quitGame*50)/10), 2, 2, 0 + random(quitGame*2), c_white, c_white, c_white, c_white, quitGame)

//ACHIEVEMENTS
var xx = local_achievement.xx
draw_rectangle_outline(xx, 3, xx+256, 64, c_black, c_white, 2)
//draw_sprite_stretched(spr_achievement_box, 0, xx, 3, 256, 64)
draw_text(xx+3, 3, "New Achievement!")
draw_text_transformed(xx+3, 24, local_achievement.name, 1.5, 1.5, 0)