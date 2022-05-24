if (snapped = false) {
	
	with (obj_base) {
		
		if (team = global.team) {
			
			camera_set_view_pos(
				view_camera,
				x - window_width / 2, 
				y - window_height / 2
			);
			
			other.snapped = true;
		}
		
	}
	
} else {
	
	var cam			= view_camera;
	var cam_speed	= 8;
	var cam_x		= camera_get_view_x(cam);
	var cam_y		= camera_get_view_y(cam);
	
	if (key_check("pan up"))	{ cam_y -= cam_speed }
	if (key_check("pan down"))	{ cam_y += cam_speed }
	if (key_check("pan left"))	{ cam_x -= cam_speed }
	if (key_check("pan right"))	{ cam_x += cam_speed }
	
	cam_x = clamp(cam_x, 0, room_width - (window_width - sidebar_width));
	cam_y = clamp(cam_y, -topbar_height, room_height - window_height);
	
	camera_set_view_pos(cam, cam_x, cam_y);
	
}
