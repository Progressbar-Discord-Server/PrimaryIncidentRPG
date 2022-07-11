if obj_plr.moveX == 0 && obj_plr.moveY == 0 {
		switch obj_plr.store_sprite[20] {
		#region //long ass code
		case 2:
			sprite_index = spr_wolf_millers_back_idle image_speed = 1 break;
		case 3:
			sprite_index = spr_wolf_millers_front_idle image_speed = 1 break;
		case 0:
			sprite_index = spr_wolf_millers_left_idle image_speed = 1 break;
		case 1:
			sprite_index = spr_wolf_millers_right_idle image_speed = 1 break;
		#endregion
	}
} else {
	switch obj_plr.store_sprite[20] {
		#region //long ass code
		case 2:
			sprite_index = spr_wolf_millers_back image_speed = 1 break;
		case 3:
			sprite_index = spr_wolf_millers_front image_speed = 1 break;
		case 0:
			sprite_index = spr_wolf_millers_left image_speed = 1 break;
		case 1:
			sprite_index = spr_wolf_millers_right image_speed = 1 break;
		#endregion
	}
}
x = obj_plr.pos_x[20]
y = obj_plr.pos_y[20]-20

depth = -y;

