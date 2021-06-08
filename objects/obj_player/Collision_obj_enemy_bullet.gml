/// @description Take Damage
p_health -= 1;
instance_destroy(other);
audio_play_sound(snd_player_hurt, 10, false);