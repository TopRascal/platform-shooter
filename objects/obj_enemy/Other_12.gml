/// @desc Hit State

// Push force
scr_move(x_speed_push);
x_speed_push[h]= lerp(x_speed_push[h], 0, 0.1);
x_speed_push[v] = lerp(x_speed_push[v], 0, 0.1);

if point_distance(0, 0, x_speed_push[h], x_speed_push[v]) < 1 {
	state = MOVEMENT;
}