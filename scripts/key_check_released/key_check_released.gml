function key_check_released(key) {
	
	var button = global.key_map[? key];
	
	if (button < 8) {
		
		return mouse_check_button_released(button);
		
	} else {
		
		return keyboard_check_released(button);
		
	};
	
}
