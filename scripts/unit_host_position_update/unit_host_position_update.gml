function unit_host_position_update() {
	
	if (x != xprevious || y != yprevious) {

		var b = net_buffer_create();
		
		buffer_write(b, buffer_u8,	net_order);
		buffer_write(b, buffer_u32, id);
		buffer_write(b, buffer_u16,	x);
		buffer_write(b, buffer_u16, y);
		buffer_write(b, buffer_u16, desx);
		buffer_write(b, buffer_u16, desy);
		
		net_packet_all_send(b);

	}
	
}