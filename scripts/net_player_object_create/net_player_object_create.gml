function net_player_object_create() {
	
	var packet = async_load[? "buffer"];
	
	var object	= buffer_read(packet, buffer_u8);
	var xpos	= buffer_read(packet, buffer_u16);
	var ypos	= buffer_read(packet, buffer_u16);
	var team	= buffer_read(packet, buffer_u8);
	var sid		= buffer_read(packet, buffer_u32);
	
	var inst = instance_create_depth(xpos, ypos, 0, object);
	inst.team = team;
	inst.sid = sid;
	
}