function net_server_object_destory() {
	
	var packet	= async_load[? "buffer"];
	var inst	= buffer_read(packet, buffer_u32);
	
	instance_destroy(inst);
	
}