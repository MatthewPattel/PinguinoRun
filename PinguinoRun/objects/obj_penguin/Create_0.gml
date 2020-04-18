/// @description CREATION VARIABLES

dir = 0;

tilemap = layer_tilemap_get_id("Collision");

movespeed = 1;
runspeed = 2;
finalspeed = 0;
jumpspeed = 3;
jumpsmax = 1;
jumps = jumpsmax;
jump = false;

grav = 0.2;

hspd = 0;
vspd = 0;
zspd = 0;

slide = false;

z = 0;
zprevious = z;
floorZ = 0;
floorD = z;

height = 16;

sprite_idle = spr_penguin;
sprite_walk = spr_penguin_walk;
sprite_run = spr_penguin_slide;
sprite_fall = spr_penguin_fall;
