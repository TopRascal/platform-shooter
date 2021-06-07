/// @description Soft-collide
if point_in_rectangle(x, y, 0, 0, room_width, room_height) {
	if x == other.x && y == other.y {
		x += sign(other.id - id);
	}
	var dir = point_direction(other.x, other.y, x, y);
	x_speed[h] += lengthdir_x(0.5, dir);
	x_speed[v] += lengthdir_y(0.5, dir);
}