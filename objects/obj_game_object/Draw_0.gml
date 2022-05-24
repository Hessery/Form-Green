draw_sprite_ext(
	sprite_index, 
	image_index, 
	x, 
	y, 
	image_xscale, 
	image_yscale,
	image_angle,
	global.team_colours[team],
	image_alpha
);

if (team = global.team) { var col = c_lime } else { var col = c_red }

var st = draw_set([col]);
if (selected) { draw_circle(x, y, sprite_width * 0.75, true) };

if (hp != max_hp) {
	
	var half_width		= sprite_width / 2;
	var half_height		= sprite_height / 2;
	var hpbar_height	= 2;
	
	draw_set([c_grey]);
	
	draw_rectangle(
		x - half_width,
		y + half_height,
		x + half_width,
		y + half_height + hpbar_height,
		false
	);
	
	draw_set([c_lime]);
	
	draw_rectangle(
		x - half_width,
		y + half_height,
		x - half_width + ((sprite_width / max_hp) * hp),
		y + half_height + hpbar_height,
		false
	);
	
};

draw_set(st);

//if (global.net_role = net_role_host) {
	
//	draw_text(x, y, string(id));
	
//} else {
	
//	draw_text(x, y, string(sid));
	
//}
