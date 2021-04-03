/// @description Initialize the enemy
h_speed = 0;
h_speed_push = 0;
v_speed = 0;
v_speed_push = 0;
m_speed = 1;
x_health = 4;

// Fire Rate & Cooldown
bullet_cooldown = room_speed / 2;
alarm[0] = bullet_cooldown;

// States
MOVEMENT = 0;
ATTACK = 1;
HIT = 2;

state = MOVEMENT;