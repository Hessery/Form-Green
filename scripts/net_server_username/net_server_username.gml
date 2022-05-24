function net_server_username(){
	
	var client = async_load[? "id"];
	var packet = async_load[? "buffer"];
	
	global.username_list[? client] = buffer_read(packet, buffer_string);
	
}