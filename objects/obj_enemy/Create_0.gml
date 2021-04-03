/// @description Initialize the enemy
x_speed = [0, 0];
x_speed_push = [0, 0];
x_speed_max = 1;
x_health = 4;

// Fire Rate & Cooldown
bullet_cooldown = room_speed / 2;
alarm[0] = bullet_cooldown;

// States
MOVEMENT = 0;
ATTACK = 1;
HIT = 2;

state = MOVEMENT; 