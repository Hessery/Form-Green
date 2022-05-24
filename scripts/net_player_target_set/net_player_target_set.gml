function net_player_target_set() {
	
	var packet	= async_load[? "buffer"];
	var inst	= buffer_read(packet, buffer_u32);
	var targ	= buffer_read(packet, buffer_u32);
	
	with (obj_game_object) {
		
		if (sid = inst) {
			
			target = targ;
			
		}
		
	}
	
}
