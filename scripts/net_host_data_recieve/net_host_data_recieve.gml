function net_host_data_recieve() {
	
	var packet = async_load[? "buffer"];
	var type = buffer_read(packet, buffer_u8);
	
	switch (type) {
		
		case net_username:				net_server_username();			break;
		case net_order:					net_server_order();				break;
		case net_game_object_create:	net_server_object_create();		break;
		case net_rally_set:				net_server_rally();				break;
		
	}
	
}