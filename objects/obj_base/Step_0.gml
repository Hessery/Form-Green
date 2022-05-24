event_inherited();

if (
	key_check_pressed("mouse secondary") && 
	mouse_on_map() && 
	selected &&
	ds_list_size(obj_control_game.select_list) = 1
) {
	
	spawn_x = mouse_x;
	spawn_y = mouse_y;
	
	if (global.net_role = net_role_client) {
		
		var b = net_buffer_create();
		
		buffer_write(b, buffer_u8,	net_rally_set);
		buffer_write(b, buffer_u32, sid);
		buffer_write(b, buffer_u16,	spawn_x);
		buffer_write(b, buffer_u16,	spawn_y);
		
		network_send_packet(global.socket, b, buffer_get_size(b));
		
	}
	
}
