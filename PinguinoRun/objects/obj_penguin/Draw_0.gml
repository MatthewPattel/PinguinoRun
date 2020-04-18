/// @description DRAW PLAYER

// Draw shadow
draw_sprite_ext(sprite_index, image_index, x, y+(sprite_height/2)-z, image_xscale, -image_yscale/2, 0, c_black, 0.5);

// Draw penguin
draw_self();
