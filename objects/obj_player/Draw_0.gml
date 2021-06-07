var dir = point_direction(x, y - sprite_height / 2, mouse_x, mouse_y);
var flip = (mouse_x > x) * 2 - 1;

// Draw Player
draw_sprite_ext(spr_player, image_index, x, y, x_scale * flip, y_scale, 0, image_blend, image_alpha);

// Draw Weapon
draw_sprite_ext(spr_gun, 0, x - 4 * flip, y - (sprite_height / 2), 1, flip, dir, image_blend, image_alpha); 