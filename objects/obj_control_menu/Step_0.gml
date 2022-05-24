switch (room) {

	case rm_menu:
		
		if (key_check_pressed("net host")) { net_host() }
		if (key_check_pressed("net join")) { net_join() }
		
	break;
	
	case rm_lobby:
		
		if (global.net_role = net_role_host) {
		
			if (key_check_pressed("game start")) { net_game_start() }
			
		}

	break;

}
