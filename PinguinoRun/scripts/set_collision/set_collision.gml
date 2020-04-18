/// @description set_collision(x, y, z, obj)
/// @param x
/// @param y
/// @param z
/// @param obj

var xx = argument0;
var yy = argument1;
var zz = argument2;

var obj = argument3;

// Height
var vheight = height;

// XY COLLISION
var xyMeeting = instance_place(xx, yy, obj);

// Z COLLISION
var zMeeting = false;
if (xyMeeting) {
	zMeeting = rectangle_in_rectangle(0, xyMeeting.z, 1, xyMeeting.z -  xyMeeting.height,
										0, zz, 1, zz - vheight)
}

return (xyMeeting and zMeeting);
