function net_server_rally() {
	
	var packet	= async_load[? "buffer"];
	var inst	= buffer_read(packet, buffer_u32);
	var new_x	= buffer_read(packet, buffer_u16);
	var new_y	= buffer_read(packet, buffer_u16);

	inst.spawn_x = new_x;
	inst.spawn_y = new_y;
	
}