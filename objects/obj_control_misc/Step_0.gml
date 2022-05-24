var role = "";

switch (global.net_role) {
	
	case net_role_none:		role = "";	break;
	case net_role_host:		role = "Host ";	break;
	case net_role_client:	role = "Client ";	break;
	
}

window_set_caption(
	role + "\"" + room_get_name(room) + "\" (" + 
	string(global.player_count) + ")"
);