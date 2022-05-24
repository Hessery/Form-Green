var list = obj_control_game.select_list

for (var i = 0; i < ds_list_size(list); i ++) {
	
	if (list[| i] = id) {
		
		ds_list_delete(list, i);
		break;
		
	}
	
}