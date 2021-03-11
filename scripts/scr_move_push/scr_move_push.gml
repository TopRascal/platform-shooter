// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_move_push()
{
if place_meeting(x + h_speed_push, y, obj_solid){
	while !place_meeting(x + sign(h_speed_push), y, obj_solid){
		x += sign(h_speed_push);
	}
	h_speed_push = 0;
}
x += h_speed_push;

if place_meeting(x, y + v_speed_push, obj_solid){
	while !place_meeting(x, y + sign(v_speed_push), obj_solid){
		y += sign(v_speed_push);
	}
	v_speed_push = 0;
}
y += v_speed_push;
}