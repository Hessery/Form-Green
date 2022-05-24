function net_player_start_game() {
	
	var packet = async_load[? "buffer"];
	global.team = buffer_read(packet, buffer_u8);
	
	room = rm_game;
	
}