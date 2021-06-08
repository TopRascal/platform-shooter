TOGGLE_PAUSE = 0;
pause = false;
pause_sprite = noone;
var gui_width = camera_get_view_width(view_camera[0]);
var gui_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(gui_width, gui_height);
score = 0;
draw_set_font(fnt_main);