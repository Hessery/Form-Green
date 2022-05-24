function net_client_username_send() {
	
	var b = net_buffer_create();
	
	buffer_write(b, buffer_u8, net_username);
	buffer_write(b, buffer_string, global.username);
	
	network_send_packet(global.socket, b, buffer_get_size(b));
	
}