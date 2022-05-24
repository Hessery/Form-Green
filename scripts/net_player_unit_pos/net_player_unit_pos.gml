function net_player_unit_pos() {
	
	var packet = async_load[? "buffer"];
	
	var inst		= buffer_read(packet, buffer_u32);
	var xpos		= buffer_read(packet, buffer_u16);
	var ypos		= buffer_read(packet, buffer_u16);
	var new_desx	= buffer_read(packet, buffer_u16);
	var new_desy	= buffer_read(packet, buffer_u16);
	
	with (obj_game_object) {
		
		if (sid = inst) {
			
			x = xpos;
			y = ypos;
			desx = new_desx;
			desy = new_desy;
			
		}
		
	}
	
}