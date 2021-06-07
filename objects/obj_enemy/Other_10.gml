/// @desc Movement State
if instance_exists(obj_player) {
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	x_speed[h] += lengthdir_x(acceleration, dir);
	x_speed[v] += lengthdir_y(acceleration, dir);
	if point_distance(0, 0, x_speed[@ h], x_speed[@ v]) > x_speed_max {
		var move_dir = point_direction(0, 0, x_speed[@ h], x_speed[@ v]);
		x_speed[h] = lengthdir_x(x_speed_max, move_dir);
		x_speed[v] = lengthdir_y(x_speed_max, move_dir);
	}

	if distance_to_object(obj_player) < 48 {
		enemy_fire_bullet();
	}
	enemy_fire_bullet();
}
scr_move(x_speed, 1);