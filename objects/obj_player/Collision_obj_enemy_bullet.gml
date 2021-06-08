/// @description Take Damage
if invincible == false {
	p_health -= 1;
	instance_destroy(other);
	audio_play_sound(snd_player_hurt, 10, false);
	invincible = true;
	alarm[1] = game_get_speed(gamespeed_fps);
}
instance_destroy(other);