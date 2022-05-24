function mouse_on_map() {
	
	var cam		= view_camera;
	var cam_x	= camera_get_view_x(cam);
	var cam_y	= camera_get_view_y(cam);
	
	if (
		mouse_y > cam_y + topbar_height &&
		mouse_x < cam_x + (window_width - sidebar_width)
	) { 
		
		return true;
		
	}
	
	return false;
	
}