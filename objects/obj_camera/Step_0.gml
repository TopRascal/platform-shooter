if not instance_exists(target) exit;
x = lerp(x, target.x, 0.1);
y = lerp(y, target.y - cam_height/4, 0.1);
x = clamp(x, cam_width/2, room_width-cam_width/2);
y = clamp(y, cam_height/2, room_height-cam_height/2);
camera_set_view_pos(view_camera[0], x - cam_width/2, y - cam_height/2);