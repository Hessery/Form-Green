function net_buffer_create() {
	
	return buffer_create(1, buffer_grow, 1)
	
}