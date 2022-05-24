function net_player_count_client() {
	
	var packet = async_load[? "buffer"];
	global.player_count = buffer_read(packet, buffer_u8);
	
}