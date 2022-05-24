function net_client_data_recieve() {
	
	var packet = async_load[? "buffer"];
	var type = buffer_read(packet, buffer_u8);
	
	switch (type) {
		
		case net_player_count:			net_player_count_client();		break;
		case net_start_game:			net_player_start_game();		break;
		case net_game_object_create:	net_player_object_create();		break;
		case net_game_object_destory:	net_player_object_destory();	break;
		case net_order:					net_player_unit_pos();			break;
		case net_health_update:			net_player_health_update();		break;
		case net_target_set:			net_player_target_set();		break;
		
	}
	
}
