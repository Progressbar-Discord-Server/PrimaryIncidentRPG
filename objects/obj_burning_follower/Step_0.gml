switch obj_plr.store_sprite[20] {
	#region //long ass code
	case spr_lolguy_back:
		sprite_index = spr_wolf_millers_back image_speed = 1 break;
	case spr_lolguy_front:
		sprite_index = spr_wolf_millers_front image_speed = 1 break;
	case spr_lolguy_left:
		sprite_index = spr_wolf_millers_left image_speed = 1 break;
	case spr_lolguy_right:
		sprite_index = spr_wolf_millers_right image_speed = 1 break;
		case spr_lolguy_idle_back:
		sprite_index = spr_wolf_millers_back_idle image_speed = 1 break;
	case spr_lolguy_idle_front:
		sprite_index = spr_wolf_millers_front_idle image_speed = 1 break;
	case spr_lolguy_idle_left:
		sprite_index = spr_wolf_millers_left_idle image_speed = 1 break;
	case spr_lolguy_idle_right:
		sprite_index = spr_wolf_millers_right_idle image_speed = 1 break;
	#endregion
}
x = obj_plr.pos_x[20]
y = obj_plr.pos_y[20]

depth = -y;
