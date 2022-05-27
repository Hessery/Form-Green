function net_game_start() {
	
	global.r_bMat	= 1000;
	global.r_pop	= 100;
	
	for (var i = 0; i < array_length(global.socket_array); i ++) {
		
		var b = net_buffer_create();
		
		buffer_write(b, buffer_u8,	net_start_game);
		buffer_write(b, buffer_u8,	global.socket_array[i]);
		buffer_write(b, buffer_u16,	global.r_bMat);
		buffer_write(b, buffer_u16,	global.r_pop);
		
		network_send_packet(global.socket_array[i], b, buffer_get_size(b));
		
	}
	
	room = rm_game;
	
}
