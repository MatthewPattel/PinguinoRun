/// @description tile_meeting()
/// @param x
/// @param y
/// @param tilemap

var xx, yy, tilemap, xp, yp, meeting;

xx = argument0;
yy = argument1;
tilemap = argument2;

// Save position
xp = x;
yp = y;

// Move to collision
x = xx;
y = xx;

// Check if collision
meeting =	tilemap_get_at_pixel(tilemap, bbox_right, bbox_top)
			or
			tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom)
			or
			tilemap_get_at_pixel(tilemap, bbox_left, bbox_top)
			or
			tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);

// Return to position
x = xp;
y = yp;

// Return if collision
return(meeting);