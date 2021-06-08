/// @description Initialize the enemy
x_speed = [0, 0];
acceleration = 0.05;
x_speed_max = 2;
x_health = 4;

// Fire Rate & Cooldown
bullet_cooldown = game_get_speed(gamespeed_fps);
alarm[0] = random(bullet_cooldown);

// States
MOVEMENT = 0;

state = MOVEMENT; 