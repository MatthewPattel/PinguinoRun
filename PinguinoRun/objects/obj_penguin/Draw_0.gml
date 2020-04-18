/// @description DRAW PLAYER

// Draw shadow
var zz = z+1;
draw_sprite_ext(sprite_index, image_index, x, y+8, (image_xscale)/zz, (-image_yscale/2)/zz, 0, c_black, 0.5);

// Draw penguin
draw_sprite_ext(sprite_index, image_index, x, y+z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
