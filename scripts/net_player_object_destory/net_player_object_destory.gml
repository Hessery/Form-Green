function net_player_object_destory() {
	
	var packet	= async_load[? "buffer"];
	var inst	= buffer_read(packet, buffer_u32);
	
	with (obj_game_object) { 
		
		if (inst = sid) { instance_destroy() }
		
	}
	
}