image_speed = 0;
image_index = 0;

/*if sprite_exists(pause_sprite) {
	draw_sprite(pause_sprite, 0, 0, 0);
}*/

if sprite_exists(pause_sprite) && pause {
 draw_sprite_ext(pause_sprite, 0, 0, 0, 0.5, 0.5, 0, c_white, 1)
 draw_text(display_get_gui_width()/4 - 20, display_get_gui_height()/4 - 20, "PAUSED")
}