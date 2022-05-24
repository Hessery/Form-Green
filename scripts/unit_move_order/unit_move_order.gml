function unit_move_order(xpos, ypos) {
	
	desx = xpos;
	desy = ypos;
	dist = point_distance(x, y, desx, desy);
	d_timer = (dist / move_speed) + 15;
	
}