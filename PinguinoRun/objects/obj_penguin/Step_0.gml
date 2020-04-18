/// @description STEP

// Input detection
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
key_slide = keyboard_check(vk_lshift);

move_x = key_right - key_left;
move_y = key_down - key_up;

// Calculate if it moves
var inputMagnitude = point_distance(0, 0, move_x, move_y);

// Generate movement or friction
if (inputMagnitude) {
	dir = point_direction(0, 0, move_x, move_y);
	// Move normal or faster
	finalspeed = key_slide ? runspeed : movespeed;
	
	if (move_x != 0) {
		image_xscale = move_x;
	}
} else {
	if (finalspeed > 0) {
		finalspeed -= 0.1;
	}
}

if (finalspeed > 0) {
	sprite_index = sprite_walk;
	if (finalspeed > movespeed) {
		sprite_index = sprite_run;
	}
} else {
	sprite_index = sprite_idle;
}

if (key_jump) {
	z = jumpspeed;
}

if (z > 0) and (!key_jump_held) { z = min(z, jumpspeed/2); }

// Move
hspd = lengthdir_x(finalspeed, dir)
vspd = lengthdir_y(finalspeed, dir);

x += hspd;
y += vspd-z;
