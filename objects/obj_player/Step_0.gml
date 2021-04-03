///@description Movement
//Check for death
if p_health <= 0 {
	instance_destroy();
}

var h_input = keyboard_check(vk_right) - keyboard_check(vk_left);

if h_input != 0 {
	h_speed += h_input*accel;
	h_speed = clamp(h_speed, -max_h_speed, max_h_speed);
} else {
	h_speed = lerp(h_speed, 0, frict);
}

if !place_meeting(x, y + 1, obj_solid){
	v_speed += grav;
} else {
	if keyboard_check_pressed(vk_up){
		v_speed = jump_height;
		x_scale = image_xscale * 0.8;
		y_scale = image_yscale * 1.4;
	}
}

scr_move(h_speed, v_speed);

// Check for landing
if place_meeting(x, y + 1, obj_solid) && !place_meeting(x, yprevious + 1, obj_solid) {
	x_scale = image_xscale * 1.4;
	y_scale = image_yscale * 0.8;
}

//Squash Animation
x_scale = lerp(x_scale, image_xscale, .2);
y_scale = lerp(y_scale, image_yscale, .2);