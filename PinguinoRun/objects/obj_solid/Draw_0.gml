/// @description Draw with shadow

// Draw shadow
draw_sprite_ext(sprite_index, image_index, x, y+sprite_height+(sprite_height/3), image_xscale, -image_yscale/2, 0, c_black, 0.5);

// Draw penguin
draw_sprite_ext(sprite_index, 0, x, y+z, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
