/// @desc Attack State
if instance_exists(obj_player) {
	if distance_to_object(obj_player) >= 48 {
		state = MOVEMENT;
	}

	if alarm[0] <= 0 {
		var dir = point_direction(x, y, obj_player.x, obj_player.y - obj_player.sprite_height / 2);
		var x_offset = lengthdir_x(28, dir);
		var y_offset = lengthdir_y(28, dir);

		var bullet = instance_create_layer(x + x_offset,  y + y_offset, "Instances", obj_enemy_bullet);
		bullet.direction = dir;
		alarm[0] = bullet_cooldown;
	} 
} 