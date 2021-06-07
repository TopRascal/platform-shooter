/// @description Create bullet
if alarm[0] <= 0 {
	var dir = point_direction(x, y - sprite_height / 2, mouse_x, mouse_y);
	var flip = (mouse_x > x) * 2 - 1;
	var gun_x = x - 4 * flip;
	var x_offset = lengthdir_x(24, dir);
	var y_offset = lengthdir_y(24, dir);

	var bullet = instance_create_layer(gun_x + x_offset,  y - sprite_height / 2 + y_offset, "Instances", obj_bullet);
	bullet.direction = dir;
	bullet.image_angle = dir;
	alarm[0] = bullet_cooldown;
} 