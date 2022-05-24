function net_host_disconnection(){
	
	global.player_count --
	array_delete(
		global.socket_array, 
		array_find(global.socket_array, async_load[? "socket"]), 
		1
	);
	net_host_player_count_send();
	
}