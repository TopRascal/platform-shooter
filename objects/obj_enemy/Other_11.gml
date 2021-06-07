/// @desc Attack State
if instance_exists(obj_player) {
	if distance_to_object(obj_player) >= 48 {
		state = MOVEMENT;
	}
	enemy_fire_bullet();
} 