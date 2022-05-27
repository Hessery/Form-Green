function obj_name_get(object) {
	
	var obj_name = object_get_name(object);
	var lower_name = string_copy(obj_name, 6, 999);
	
	return string_upper(string_copy(obj_name, 5, 1)) + lower_name;
	
}