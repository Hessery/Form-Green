function net_host_player_count_send() {
	
	var b = net_buffer_create();
	
	buffer_write(b, buffer_u8, net_player_count);
	buffer_write(b, buffer_u8, global.player_count);
	
	net_packet_all_send(b);
	
}