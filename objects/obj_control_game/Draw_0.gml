if (key_check("mouse primary") && mouse_on_map()) {
	
	var st = draw_set([c_lime]);
	draw_rectangle(select_start_x, select_start_y, mouse_x, mouse_y, true);
	draw_set(st);
	
}

draw_text(0, 0, string(ds_list_size(select_list)));
