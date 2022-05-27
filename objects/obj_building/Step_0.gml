event_inherited();

if (array_length(build_queue) > 0) {
	
	build_queue[0][0] --
	
	if (build_queue[0][0] <= 0) {
		
		if (global.net_role = net_role_host) {
			
			var inst = instance_create_depth(
				x,
				y,
				0,
				build_queue[0][1]
			);
			
			inst.team = global.team;
			with (inst) { unit_move_order(other.spawn_x, other.spawn_y) }
			
		} else {
			
			var b = net_buffer_create();
			
			buffer_write(b, buffer_u8,	net_game_object_create);
			buffer_write(b, buffer_u32,	id);
			buffer_write(b, buffer_u8,	build_queue[0][1]);
			buffer_write(b, buffer_u8,	true);
			
			network_send_packet(global.socket, b, buffer_get_size(b));
			
		}
		
		array_delete(build_queue, 0, 1);
		
	}
	
}
