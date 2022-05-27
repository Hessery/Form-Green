function net_server_object_create() {
	
	var packet		= async_load[? "buffer"];
	var team		= async_load[? "id"];
	
	var spawn_inst	= buffer_read(packet, buffer_u32);
	var new_inst	= buffer_read(packet, buffer_u8);
	var move		= buffer_read(packet, buffer_u8);
	
	var inst = instance_create_depth(
		spawn_inst.x, 
		spawn_inst.y, 
		0, 
		new_inst
	)
	
	inst.team = team;
	
	if (move) {
		
		with (inst) {
			
			unit_move_order(spawn_inst.spawn_x, spawn_inst.spawn_y);
			
		}
		
	}
	
}