/// @description Initializing Variables
h_speed = 0;
max_h_speed = 4;
v_speed = 0;
grav = 0.5;
accel = 1;
jump_height = -10;
frict = 0.6;

/// Keymapping
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);