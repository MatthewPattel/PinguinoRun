/// @description DRAW PLAYER

// Draw shadow
var zz = (zprevious != z) ? z+1 : 1;
var zd = (zspd != 0) ? 0 : ((z != zprevious) ? 0 : ((jumps != jumpsmax) ? 0 : z));
var zd = (zspd != 0) ? 0 : ((jumps != jumpsmax) ? 0 : z);

zd = (jump) ? 0 : floorD;
draw_sprite_ext(sprite_index, image_index, x, y+8+zd, image_xscale, -image_yscale/2, 0, c_black, 0.5);

// Draw penguin
draw_sprite_ext(sprite_index, image_index, x, y+z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

draw_text(x, y+40, string(z));
draw_text(x, y+60, string(zprevious));
