function net_data_recieve() {
	
	switch (global.net_role) {
		
		case net_role_host:		net_host_data_recieve();	break;
		case net_role_client:	net_client_data_recieve();	break;
		
	}
	
}