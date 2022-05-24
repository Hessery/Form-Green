if (global.net_role = net_role_host) {
	
	var b = net_buffer_create();

	buffer_write(b, buffer_u8,	net_game_object_create);
	buffer_write(b, buffer_u8,	object_index);
	buffer_write(b, buffer_u16, x);
	buffer_write(b, buffer_u16, y);
	buffer_write(b, buffer_u8,	team);
	buffer_write(b, buffer_u32, id);

	net_packet_all_send(b);
	
}
