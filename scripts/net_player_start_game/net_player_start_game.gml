function net_player_start_game() {
	
	var packet		= async_load[? "buffer"];
	
	global.team		= buffer_read(packet, buffer_u8);
	global.r_bMat	= buffer_read(packet, buffer_u16);
	global.r_pop	= buffer_read(packet, buffer_u16);
	
	room			= rm_game;
	
}