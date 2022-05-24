function net_player_health_update() {
	
	var packet	= async_load[? "buffer"];
	var inst	= buffer_read(packet, buffer_u32);
	var new_hp	= buffer_read(packet, buffer_u8);
	
	with (obj_game_object) { 
		
		if (sid = inst) { hp = new_hp }
		
	}
	
}