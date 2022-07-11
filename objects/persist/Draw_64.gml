/// @description Draw version stuff
draw_text_color(16, 16, "version " + version, c_white, c_white, c_white, c_white, 0.5)
draw_text_color(16, 32, "coins: " + string(global.saveData.coins), c_white, c_white, c_white, c_white, 0.5)
draw_text_transformed_color(0, 0, "Quitting...", 2, 2, 0 + random(quitGame*2), c_white, c_white, c_white, c_white, quitGame)