/// @description Move towards the player
// Move
var dir = point_direction(x, y, obj_player.x, obj_player.y);
h_speed = lengthdir_x(m_speed, dir);
v_speed = lengthdir_y(m_speed, dir);
scr_move();

// Push force
scr_move_push();
if !place_meeting(x, y, obj_enemy) {
	h_speed_push = lerp(h_speed_push, 0, 0.1);
	v_speed_push = lerp(v_speed_push, 0, 0.1);
}

// DEATH
if x_health <= 0 {
	instance_destroy();
}