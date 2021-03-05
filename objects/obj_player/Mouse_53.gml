/// @description Create bullet
var dir = point_direction(x, y, mouse_x, mouse_y);
var flip = (mouse_x > x) * 2 - 1;
var gun_x = x - 4 * flip;
var x_offset = lengthdir_x(28, dir);
var y_offset = lengthdir_y(28, dir);

instance_create_layer(gun_x + x_offset, y + y_offset, "Instances", obj_bullet);