if (global.net_role = net_role_host) {
	
	instance_create_depth(200, 200,								0, obj_base).team = 0;
	instance_create_depth(room_width - 200, room_height - 200,	0, obj_base).team = 1;
	instance_create_depth(200, room_height - 200,				0, obj_base).team = 2;
	instance_create_depth(room_width - 200, 200,				0, obj_base).team = 3;
	instance_create_depth(room_width / 2, 200,					0, obj_base).team = 4;
	instance_create_depth(room_width - 200, room_height / 2,	0, obj_base).team = 5;
	instance_create_depth(200, room_height / 2,					0, obj_base).team = 6;
	instance_create_depth(room_width / 2, room_height - 200,	0, obj_base).team = 7;
	
	camera_set_view_pos(view_camera, 200 - window_width / 2, 200 - window_height / 2);
	
}
