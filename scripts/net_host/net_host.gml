function net_host(){
	
	global.server = network_create_server(
		network_socket_tcp,
		6969,
		8
	);
	
	if (global.server = -1) { return }
	
	log("NET   > Server started");
	global.net_role = net_role_host;
	global.player_count = 1;
	global.username = string(irandom(99));
	global.username_list = ds_map_create();
	global.team = 0;
	
	room = rm_lobby;
	
}