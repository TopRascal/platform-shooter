// @description Initializing Variables
x_speed = [0, 0];
max_x_speed = 4;
grav = 0.5;
accel = 1;
jump_height = -10;
frict = 0.6;
max_health = 5;
p_health = max_health;

// Keymapping
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(vk_space, vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// Fire Rate & Cooldown
bullet_cooldown = room_speed / 6;
alarm[0] = bullet_cooldown;

// Scale Vars
x_scale = image_xscale;
y_scale = image_yscale;

var solid_layer = layer_get_id("Solids");
layer_set_visible(solid_layer, debug_mode);