/// @description
key_left = -keyboard_check(vk_left)
key_up = -keyboard_check(vk_up)
key_right = keyboard_check(vk_right)
key_down = keyboard_check(vk_down)

if -key_left {
	sprite_index = spr_lolguy_left
} else if key_right {
	sprite_index = spr_lolguy_right
} else if -key_up {
	sprite_index = spr_lolguy_back
} else if key_down {
	sprite_index = spr_lolguy_front
}

moveX = (key_left + key_right)*moveSpeed
moveY = (key_up + key_down)*moveSpeed

if (place_meeting(x + moveX, y, colis)) {
    while (!place_meeting(x + sign(moveX), y, colis)) x += sign(moveX);
    moveX = 0;
}
x += moveX;

if (place_meeting(x, y+moveY, colis)) {
    while (!place_meeting(x, y+ sign(moveY), colis)) y += sign(moveY);
    moveY = 0;
}
y += moveY;