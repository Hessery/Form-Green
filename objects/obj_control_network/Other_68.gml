switch (async_load[? "type"]) {
	
	case network_type_connect:		net_host_new_connection();	break;
	case network_type_disconnect:	net_host_disconnection();	break;
	case network_type_data:			net_data_recieve()			break;
	
}