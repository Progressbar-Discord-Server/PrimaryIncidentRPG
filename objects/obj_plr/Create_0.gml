/// @description Initialize Player

//Allow player to use WASD and arrow keys
keyboard_set_map(ord("A"), vk_left)
keyboard_set_map(ord("W"), vk_up)
keyboard_set_map(ord("S"), vk_down)
keyboard_set_map(ord("D"), vk_right)

sprite_index = spr_lolguy_front

lastFacing=3 //0=left, 1=right, 2=back, 3=front

moveSpeed=2.5 //how many pixels/sec the player moves

positions = 64; //how close the followers are to the player.

canMove=1

for (var i = positions-1; i >= 0; i--;) {
	pos_x[i] = x;
	pos_y[i] = y;
	store_sprite[i] = lastFacing;
}