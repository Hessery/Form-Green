function max_pop_calculate() {
	
	var cap = 100;
	
	with (obj_base) { 
		
		if (team = global.team) {
			
			cap += 20;
			
		}
		
	}
	
	return cap
	
}