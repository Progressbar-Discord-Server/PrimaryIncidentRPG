/// @description
key_left = -keyboard_check(vk_left)
key_up = -keyboard_check(vk_up)
key_right = keyboard_check(vk_right)
key_down = keyboard_check(vk_down)

moveX = (key_left + key_right)*moveSpeed
moveY = (key_up + key_down)*moveSpeed

if -key_left {
	sprite_index = spr_lolguy_left
	lastFacing=0
} else if key_right {
	sprite_index = spr_lolguy_right
	lastFacing=1
} else if -key_up {
	sprite_index = spr_lolguy_back
	lastFacing=2
} else if key_down {
	sprite_index = spr_lolguy_front
	lastFacing=3
}

if moveX + moveY = 0 {
	switch lastFacing {
		case 0: sprite_index = spr_lolguy_idle_left break;	
		case 1: sprite_index = spr_lolguy_idle_right break;	
		case 2: sprite_index = spr_lolguy_idle_back break;	
		case 3: sprite_index = spr_lolguy_idle_front break;	
	}
}


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