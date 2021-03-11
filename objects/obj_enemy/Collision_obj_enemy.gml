/// @description Soft-collide
var dir = point_direction(other.x, other.y, x, y);
h_speed_push += lengthdir_x(0.5, dir);
v_speed_push += lengthdir_y(0.5, dir);
