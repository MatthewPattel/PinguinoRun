/// @description CREATION VARIABLES

life = 5;

dir = 0;

tilemap = layer_tilemap_get_id("Collision");

movespeed = 2;
runspeed = 3;
finalspeed = 0;
jumpspeed = 3;
jump = false;

grav = 0.2;

hspd = 0;
vspd = 0;
zspd = 0;

slide = false;

z = 0;
floorZ = false;

height = sprite_height;

sprite_idle = spr_penguin;
sprite_walk = spr_penguin_walk;
sprite_run = spr_penguin_slide;
sprite_fall = spr_penguin_fall;
