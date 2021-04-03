/// @description Soft-collide
var dir = point_direction(other.x, other.y, x, y);
x_speed_push[h] += lengthdir_x(0.5, dir);
x_speed_push[v] += lengthdir_y(0.5, dir);
