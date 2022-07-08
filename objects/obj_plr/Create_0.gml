/// @description

//Allow player to use WASD and arrow keys
keyboard_set_map(ord("A"), vk_left)
keyboard_set_map(ord("W"), vk_up)
keyboard_set_map(ord("S"), vk_down)
keyboard_set_map(ord("D"), vk_right)

sprite_index = spr_lolguy_front

lastFacing=3

moveSpeed=2.5

positions = 94;

for (var i = positions-1; i >= 0; i--;) {
	pos_x[i] = x;
	pos_y[i] = y;
	store_sprite[i] = sprite_index;
}