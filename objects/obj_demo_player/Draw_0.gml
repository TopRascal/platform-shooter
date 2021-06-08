var flip = (mouse_x > x) * 2 - 1;

// Draw Player
draw_sprite_ext(spr_player, image_index, x, y, x_scale * flip, y_scale, 0, image_blend, image_alpha);