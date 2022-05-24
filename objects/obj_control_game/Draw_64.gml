var st = draw_set([c_grey])

draw_rectangle(0, 0, window_width, topbar_height, false);
draw_rectangle(
	window_width - sidebar_width, 0, 
	window_width, window_height, 
	false
);

draw_set([c_white]);

draw_text(4, 2,		"Bmat: ");
draw_text(104, 2,	"Pop: ");

if (ds_list_size(select_list) > 0) {
	
	var first_inst = select_list[| 0];
	
	draw_text(830, 30, object_get_name(first_inst.object_index) + 
		"\n" + string(ds_list_size(select_list)));
	
	if (first_inst.team = global.team) {
		
		switch (first_inst.object_index) {
			
			case obj_base:
				
				draw_sprite(spr_worker, 0, 830, 40);
				if (
					key_check_pressed("mouse primary") &&
					mouse_x - camera_get_view_x(view_camera) > 814 &&
					mouse_x - camera_get_view_x(view_camera) < 846
				) {
					
					if (global.net_role = net_role_host) {
						
						var inst = instance_create_depth(
							first_inst.x, 
							first_inst.y, 
							0, obj_fighter
						);
						
						inst.team = global.team;
						with (inst) {
							
							desx = first_inst.spawn_x;
							desy = first_inst.spawn_y;
							dist = point_distance(x, y, desx, desy);
							d_timer = (dist / move_speed) + 15;
							
						}
						
					} else {
						
						var b = net_buffer_create();
						
						buffer_write(b, buffer_u8,	net_game_object_create);
						buffer_write(b, buffer_u32,	first_inst);
						buffer_write(b, buffer_u8,	obj_fighter);
						
						network_send_packet(global.socket, b, buffer_get_size(b));
						
					}
					
				}
				
			break;
			
		}
		
	}
	
}

draw_set(st);
