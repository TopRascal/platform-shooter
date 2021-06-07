/// @desc Movement State
if instance_exists(obj_player) {
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	x_speed[h] = lengthdir_x(x_speed_max, dir);
	x_speed[v] = lengthdir_y(x_speed_max, dir);
	scr_move(x_speed);

	// Push force
	scr_move(x_speed_push);
	if !place_meeting(x, y, obj_enemy) {
		x_speed_push[h] = lerp(x_speed_push[h], 0, 0.1);
		x_speed_push[v] = lerp(x_speed_push[v], 0, 0.1);
	}

	if distance_to_object(obj_player) < 48 {
		state = ATTACK;
	}
	enemy_fire_bullet();
}