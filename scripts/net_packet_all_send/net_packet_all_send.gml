function net_packet_all_send(buffer) {
	
	var buffer_size = buffer_get_size(buffer);
	
	for (var i = 0; i < array_length(global.socket_array); i ++) {
		
		network_send_packet(global.socket_array[i], buffer, buffer_size);
		
	}
	
}