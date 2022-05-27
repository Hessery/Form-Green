if (key_check_pressed("mouse primary") && mouse_on_map()) {
	
	select_start_x = mouse_x;
	select_start_y = mouse_y;
	
}

if (key_check_released("mouse primary") && mouse_on_map()) {
	
	for (var i = 0; i < ds_list_size(select_list); i ++) {
		
		select_list[| i].selected = false;
			
	}
	
	ds_list_clear(select_list);
		
	collision_rectangle_list(
		select_start_x,
		select_start_y,
		mouse_x,
		mouse_y,
		obj_game_object,
		false,
		true,
		select_list,
		false
	);
		
	for (var i = 0; i < ds_list_size(select_list); i ++) {
		
		select_list[| i].selected = true;
		
	}
		
}

var max_pop = max_pop_calculate();
global.r_pop += global.r_pop / 7200;
global.r_pop = min(max_pop, global.r_pop);

if (global.net_role != net_role_host) { exit }

attack_timer --
if (attack_timer <= 0) {
	
	with (obj_unit) {
		
		if (instance_exists(target) && target != -1) {
			
			target.hp --
			
		}
		
	}
	
	attack_timer = 15;
	
}
