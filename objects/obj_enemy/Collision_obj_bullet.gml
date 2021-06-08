/// @description Damage Receive
x_health -= 1;
instance_destroy(other);

var dir = other.direction;
x_speed[h] = lengthdir_x(8, dir);
x_speed[v] = lengthdir_y(8, dir);

audio_play_sound(snd_enemy_hurt, 9, false);