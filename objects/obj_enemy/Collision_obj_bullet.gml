/// @description Damage Receive
x_health -= 1;
instance_destroy(other);

state = HIT;
var dir = other.direction;
x_speed_push[h] = lengthdir_x(8, dir);
x_speed_push[v] = lengthdir_y(8, dir);