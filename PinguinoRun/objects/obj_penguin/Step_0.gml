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
	zspd = -jumpspeed;
}

if (zspd < 10) {
	zspd += grav;
}

if (z > 0) and (!key_jump_held) { z = max(z, -jumpspeed/2); }// else { z = 0; }

hspd = lengthdir_x(finalspeed, dir)
vspd = lengthdir_y(finalspeed, dir);
/*
var bbox_side;
if (hspd > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap, bbox_side+hspd, bbox_top) != 0) or (tilemap_get_at_pixel(tilemap, bbox_side+hspd, bbox_bottom) != 0) {
	if (hspd > 0) x = x - (x mod 16) + 15 - (bbox_right - x);
	else x = x - (x mod 16) - (bbox_left - x);
	hspd = 0;
}

if (vspd > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+vspd) != 0) or (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+vspd) != 0) {
	if (vspd > 0) y = y - (y mod 16) + 15 - (bbox_bottom - y);
	else y = y - (y mod 16) - (bbox_top - y);
	vspd = 0;
}
*/

if (z+zspd > floorZ) {
	zspd = 0;
	z = floorZ;
}


if (tile_meeting(x + hspd, y, tilemap)) {
	hspd = 0;
}

if (tile_meeting(x, y + vspd, tilemap)) {
	vspd = 0;
}


// Move
x += hspd;
y += vspd-z;
