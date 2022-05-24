function array_find(array, value) {
	
	if (!is_array(array)) { return }
	var length = array_length(array);

	for (var i = 0; i < length; i ++) {
    
	    if (value = array[i]) { return i }
    
	}

	return -1
	
}