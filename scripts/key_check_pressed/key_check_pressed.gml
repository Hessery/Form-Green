function key_check_pressed(key) {
	
	var button = global.key_map[? key];
	
	if (button < 8) {
		
		return mouse_check_button_pressed(button);
		
	} else {
		
		return keyboard_check_pressed(button);
		
	}
	
}
