/// @desc Hit State

// Push force
scr_move(h_speed_push, v_speed_push);
h_speed_push = lerp(h_speed_push, 0, 0.1);
v_speed_push = lerp(v_speed_push, 0, 0.1);

if point_distance(0, 0, h_speed_push, v_speed_push) < 1 {
	state = MOVEMENT;
}