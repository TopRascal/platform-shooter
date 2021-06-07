/// @desc Waves
if !instance_exists(obj_enemy) {
	repeat (wave) {
		instance_create_layer(x, y, "Instances", obj_enemy);
	}
	wave += 1;
}