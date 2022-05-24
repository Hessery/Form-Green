function net_server_order() {
	
	var packet	= async_load[? "buffer"];
	var inst	= buffer_read(packet, buffer_u32);
	var xpos	= buffer_read(packet, buffer_u16);
	var ypos	= buffer_read(packet, buffer_u16);
	
	with (inst) { unit_move_order(xpos, ypos) }
	
}