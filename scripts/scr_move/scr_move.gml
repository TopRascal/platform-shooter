function scr_move(x_speed, bounce)
{
///@param speed
//var x_speed = argument0;
//var p_bounce = argument1;

if place_meeting(x + x_speed[h], y, obj_solid){
	while !place_meeting(x + sign(x_speed[h]), y, obj_solid){
		x += sign(x_speed[h]);
	}
	if bounce > 0 {
		x_speed[@ h] = -x_speed[@ h] * bounce;
	} else {
		x_speed[@ h] = 0;
	}
}
x += x_speed[h];

if place_meeting(x, y + x_speed[v], obj_solid){
	while !place_meeting(x, y + sign(x_speed[v]), obj_solid){
		y += sign(x_speed[v]);
	}
		if bounce > 0 {
		x_speed[@ v] = -x_speed[@ v] * bounce;
	} else {
		x_speed[@ v] = 0;
	}
}
y += x_speed[v];
}