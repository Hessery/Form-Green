function key_check(key) {
	
	var button = global.key_map[? key];
	
	if (button < 8) {
		
		return mouse_check_button(button);
		
	} else {
		
		return keyboard_check(button);
		
	}
	
}
