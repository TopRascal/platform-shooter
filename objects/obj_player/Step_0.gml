///@description Movement
//Check for death
if p_health <= 0 {
	instance_destroy();
}

var h_input = keyboard_check(vk_right) - keyboard_check(vk_left);

if h_input != 0 {
	x_speed[h] += h_input*accel;
	x_speed[h] = clamp(x_speed[h], -max_x_speed, max_x_speed);
	var flip = (mouse_x > x) * 2 - 1;
	image_speed = flip * h_input * .6;
} else {
	x_speed[h] = lerp(x_speed[h], 0, frict);
	image_speed = 0;
	image_index = 0;
}

if !place_meeting(x, y + 1, obj_solid){
	x_speed[v] += grav;
	image_speed = 0;
	image_index = 6;
} else {
	if keyboard_check_pressed(vk_up){
		x_speed[v] = jump_height;
		x_scale = image_xscale * 0.8;
		y_scale = image_yscale * 1.4;
	}
}

scr_move(x_speed, 0);

// Check for landing
if place_meeting(x, y + 1, obj_solid) && !place_meeting(x, yprevious + 1, obj_solid) {
	x_scale = image_xscale * 1.4;
	y_scale = image_yscale * 0.8;
}

//Squash Animation
x_scale = lerp(x_scale, image_xscale, .2);
y_scale = lerp(y_scale, image_yscale, .2);

// Warp
warp();