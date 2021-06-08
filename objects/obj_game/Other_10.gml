/// @description Toggle Pause
if not pause {
	pause = true;
	if sprite_exists(pause_sprite) sprite_delete(pause_sprite);
	pause_sprite = sprite_create_from_surface(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height(), false, false, 0, 0)
	//pause_sprite = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, false, false, 0, 0);
	instance_deactivate_all(true);
} else {
	if sprite_exists(pause_sprite) sprite_delete(pause_sprite);
	pause = false;
	instance_activate_all();
}
///CURRENTLY BROKEN DUE TO ROOM SIZE