event_inherited();

if (global.net_role = net_role_host) {
	
	var list = ds_list_create();
	collision_circle_list(x, y, 128, obj_game_object, false, true, list, false);
	
	for (var i = 0; i < ds_list_size(list); i ++) {
		
		if (list[| i].team != team) {
			
			target = list[| i].id;
			
			var b = net_buffer_create();
			
			buffer_write(b, buffer_u8,	net_target_set);
			buffer_write(b, buffer_u32,	id);
			buffer_write(b, buffer_u32,	target);
			
			net_packet_all_send(b);
			
			break;
			
		}
		
	}
	
	ds_list_destroy(list);
	
}

if (target != -1) {
	
	if (distance_to_object(target) > 128) { 
		
		target = -1;
		
		var b = net_buffer_create();
		
		buffer_write(b, buffer_u8,	net_target_set);
		buffer_write(b, buffer_u32,	id);
		buffer_write(b, buffer_u32,	target);
		
		net_packet_all_send(b);
		
	}
	
}
