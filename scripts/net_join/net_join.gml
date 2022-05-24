function net_join(){
	
	global.socket = network_create_socket(network_socket_tcp);
	var success = network_connect(global.socket, "localhost", 6969);
	
	if (success < 0) { return }
	
	log("NET   > Client connected");
	global.net_role = net_role_client;
	
	room = rm_lobby;
	
	global.username = string(irandom(99));
	net_client_username_send();
	
}