function host_spawn_bases() {
	
	var spacing			= 360 / global.player_count;
	var spawn_offset	= (global.player_count - 2) * 5.625;
	var inital_offset	= 135;
	
	var center_x		= room_width / 2;
	var center_y		= room_height / 2;
	var spawn_length	= center_x - 150;
	
	for (var i = 0; i < global.player_count; i ++) {
		
		var angle	= (inital_offset - spawn_offset) + (spacing * i);
		
		var spawn_x = center_x + lengthdir_x(spawn_length, angle);
		var spawn_y = center_y + lengthdir_y(spawn_length, angle);
		
		instance_create_depth(spawn_x, spawn_y, 0, obj_base).team = i;
		
	}
	
}