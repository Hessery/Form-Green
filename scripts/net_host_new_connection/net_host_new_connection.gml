function net_host_new_connection() {
	
	global.player_count ++
	array_push(global.socket_array, async_load[? "socket"]);
	net_host_player_count_send();
	
}