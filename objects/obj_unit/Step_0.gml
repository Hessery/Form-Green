event_inherited();

if (!instance_exists(target)) { target = -1 }

if (global.net_role = net_role_host) {
	
	unit_host_move_order();
	
	if (x != desx || y != desy) {
		
		if (point_distance(x, y, desx, desy) > move_speed + 1) {
			
			var dir = point_direction(x, y, desx, desy);
			x = x + lengthdir_x(move_speed, dir);
			y = y + lengthdir_y(move_speed, dir);
			
		} else {
			
			x = desx;
			y = desy;
			
		}
		
	}
	
	if (d_timer > 0) { 
		
		d_timer -- 
		
	} else {
		
		desx = x;
		desy = y;
		
	}
	
	if (x < radius || x > room_width - radius) {
		
		x = clamp(x, radius, room_width - radius);
		desx = x;
		
	}
	
	if (y < radius || y > room_height - radius) {
		
		y = clamp(y, radius, room_height - radius);
		desx = y;
		
	}
	
} else {
	
	if (selected) {
		
		if (key_check_pressed("mouse secondary") && team = global.team) {
			
			var b = net_buffer_create();
			
			buffer_write(b, buffer_u8, net_order);
			buffer_write(b, buffer_u32, sid);
			buffer_write(b, buffer_u16, mouse_x);
			buffer_write(b, buffer_u16, mouse_y);
			
			network_send_packet(global.socket, b, buffer_get_size(b));
			
		}
		
	}
	
}

unit_host_position_update();
