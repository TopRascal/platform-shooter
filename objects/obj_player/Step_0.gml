///@description Movement
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

if place_meeting(x + h_speed, y, obj_solid){
	while !place_meeting(x + sign(h_speed), y, obj_solid){
		x += sign(h_speed);
	}
	h_speed = 0;
}
x += h_speed;

if place_meeting(x, y + v_speed, obj_solid){
	while !place_meeting(x, y + sign(v_speed), obj_solid){
		y += sign(v_speed);
	}
	v_speed = 0;
}
y += v_speed;

// Check for landing
if place_meeting(x, y + 1, obj_solid) && !place_meeting(x, yprevious + 1, obj_solid) {
	x_scale = image_xscale * 1.4;
	y_scale = image_yscale * 0.8;
}

//Squash Animation
x_scale = lerp(x_scale, image_xscale, .2);
y_scale = lerp(y_scale, image_yscale, .2);