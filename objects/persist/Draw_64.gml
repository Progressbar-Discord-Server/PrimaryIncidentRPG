/// @description Draw version stuff
draw_set_font(fnt_dialogue)
draw_text_color(16, 16, "version " + version, c_white, c_white, c_white, c_white, 0.5)
draw_text_color(16, 32, "[TEST] coins: " + string(global.saveData.coins), c_white, c_white, c_white, c_white, 0.5)
draw_text_transformed_color(0, 0, "Quitting" + string_repeat(".", (quitGame*50)/10), 2, 2, 0 + random(quitGame*2), c_white, c_white, c_white, c_white, quitGame)

draw_rectangle_outline(local_achievement.xx, 0, local_achievement.xx+256, 64, c_black, c_white, 2)