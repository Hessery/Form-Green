var text = ""

switch (room) {
	
	case rm_menu:
		
		text = "Press 'H' to host.\nPress 'J' to join.";
		
	break;
	
	case rm_lobby:
		
		text = "Please wait for the host to start the game.";
		
		if (global.net_role != net_role_host) { break };
		
		text = "Press 'space' to start the game.";
		
	break;
	
}

draw_text(16, 16, text);
draw_text(16, 64, "0 - " + global.username);

if (global.net_role = net_role_host) {
	
	for (var i = 0; i < array_length(global.socket_array); i ++) {
		
		var sock_id = global.socket_array[i];
		var username = global.username_list[? sock_id];
		
		if (is_undefined(username)) { continue }
		
		draw_text(16, 84 + (20 * i), string(sock_id) + " - " + username);
		
	};
	
}
