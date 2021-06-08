/// @desc Waves
if !instance_exists(obj_enemy) {
	repeat (wave) {
		instance_create_layer(random_range(0, room_width), random_range(-64, -32), "Instances", obj_enemy);
	}
	wave += 1;
}