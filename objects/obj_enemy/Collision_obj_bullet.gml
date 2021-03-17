/// @description Damage Receive
x_health -= 1;
instance_destroy(other);
state = HIT;
var dir = other.direction;
h_speed_push = lengthdir_x(8, dir);
v_speed_push = lengthdir_y(8, dir);