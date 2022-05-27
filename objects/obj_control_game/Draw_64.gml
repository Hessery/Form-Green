var st = draw_set([c_grey])

draw_rectangle(0, 0, window_width, topbar_height, false);
draw_rectangle(
	window_width - sidebar_width, 0, 
	window_width, window_height, 
	false
);

draw_set([c_white]);

draw_text(4, 2,		"Bmat: " + string(global.r_bMat));
draw_text(104, 2,	"Pop: " + string(floor(global.r_pop)) + "/" + 
	string(max_pop_calculate()));

if (ds_list_size(select_list) > 0) {
	
	var first_inst = select_list[| 0];
	var name = obj_name_get(first_inst.object_index);
	
	draw_text(830, 30, name);
	
	if (first_inst.team = global.team) {
		
		switch (first_inst.object_index) {
			
			case obj_base:
				
				var cam_x = camera_get_view_x(view_camera);
				var cam_y = camera_get_view_y(view_camera);
				var sidebar = window_width - sidebar_width;
				
				var buildables = [ obj_pawn, obj_rook ];
				
				for (var i = 0; i < array_length(buildables); i ++) {
					
					var spr = object_get_sprite(buildables[i]);
					var icon_pos_x = sidebar + 16;
					var icon_pos_y = 60 + (32 * i);
					
					draw_sprite_stretched(
						spr, 
						-1, 
						icon_pos_x, 
						icon_pos_y,
						24, 
						24
					);
					
					var st = draw_set([-1, -1, -1, -1, fa_middle]);
					
					draw_text(
						icon_pos_x + 32, 
						icon_pos_y + 12,
						obj_name_get(buildables[i])
					);
					
					draw_set(st);
					
					if (
						(mouse_x - cam_x) < icon_pos_x + 24 &&
						(mouse_x - cam_x) > icon_pos_x &&
						(mouse_y - cam_y) < icon_pos_y + 24 &&
						(mouse_y - cam_y) > icon_pos_y &&
						key_check_pressed("mouse primary")
					) {
						
						var cost_array = global.build_index[? buildables[i]]
						
						if (
							global.r_bMat	> cost_array[0] &&
							global.r_pop	> cost_array[1]
						) {
							
							global.r_bMat	-= cost_array[0];
							global.r_pop	-= cost_array[1];
							
							array_push(first_inst.build_queue, [60, buildables[i]]);
							
						}
						
					}
					
				};
				
			break;
			
			case obj_pawn:
				
				var cam_x = camera_get_view_x(view_camera);
				var cam_y = camera_get_view_y(view_camera);
				var sidebar = window_width - sidebar_width;
				
				var buildables = [ obj_miner, obj_base ];
				
				for (var i = 0; i < array_length(buildables); i ++) {
					
					var spr = object_get_sprite(buildables[i]);
					var icon_pos_x = sidebar + 16;
					var icon_pos_y = 60 + (32 * i);
					
					draw_sprite_stretched(
						spr, 
						-1, 
						icon_pos_x, 
						icon_pos_y,
						24, 
						24
					);
					
					var st = draw_set([-1, -1, -1, -1, fa_middle]);
					
					draw_text(
						icon_pos_x + 32, 
						icon_pos_y + 12,
						obj_name_get(buildables[i])
					);
					
					draw_set(st);
					
					if (
						(mouse_x - cam_x) < icon_pos_x + 24 &&
						(mouse_x - cam_x) > icon_pos_x &&
						(mouse_y - cam_y) < icon_pos_y + 24 &&
						(mouse_y - cam_y) > icon_pos_y &&
						key_check_pressed("mouse primary")
					) {
						
						var cost_array = global.build_index[? buildables[i]]
						
						if (
							global.r_bMat	> cost_array[0] &&
							global.r_pop	> cost_array[1]
						) {
							
							global.r_bMat	-= cost_array[0];
							global.r_pop	-= cost_array[1];
							
							var xpos = first_inst.x;
							var ypos = first_inst.y;
							
							if (global.net_role = net_role_host) {
								
								var inst = instance_create_depth(xpos, ypos, depth, buildables[i]);
								inst.team = global.team;
								
								first_inst.hp = -10;
								
							} else {
								
								var b = net_buffer_create();
								
								buffer_write(b, buffer_u8,	net_game_object_create);
								buffer_write(b, buffer_u32,	first_inst);
								buffer_write(b, buffer_u8,	buildables[i]);
								buffer_write(b, buffer_u8,	false);
								
								network_send_packet(global.socket, b, buffer_tell(b));
								
								var b = net_buffer_create();
								
								buffer_write(b, buffer_u8,	net_game_object_destory);
								buffer_write(b, buffer_u32,	first_inst.sid);
								
								network_send_packet(global.socket, b, buffer_tell(b));
								
								instance_destroy(first_inst);
								
							}
							
						}
						
					}
					
				};
				
			break;
			
		}
		
	}
	
}

draw_set(st);
