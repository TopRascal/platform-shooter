/// @description Initialize the enemy
x_speed = [0, 0];
acceleration = 0.05;
x_speed_max = 2;
x_health = 4;

// Fire Rate & Cooldown
bullet_cooldown = room_speed / 2;
alarm[0] = bullet_cooldown;

// States
MOVEMENT = 0;

state = MOVEMENT; 