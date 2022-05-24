if (team != -1 && global.player_count <= team) {
	
	instance_destroy();
	
}

if (global.net_role != net_role_host) { exit }

if (hp < 0) {
	
	var b = net_buffer_create();
	
	buffer_write(b, buffer_u8,	net_game_object_destory);
	buffer_write(b, buffer_u32,	id);
	
	net_packet_all_send(b);
	
	instance_destroy();
	
}

if (hp != hp_previous) {

	var b = net_buffer_create();
		
	buffer_write(b, buffer_u8,	net_health_update);
	buffer_write(b, buffer_u32,	id);
	buffer_write(b, buffer_u8,	hp);
		
	net_packet_all_send(b);

}

hp_previous = hp;
