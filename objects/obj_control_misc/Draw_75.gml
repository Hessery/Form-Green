if (fps_real > highest) { highest = fps_real }
if (fps_real < lowest)	{ lowest = fps_real }

if (keyboard_check_pressed(vk_space)) {
	
	lowest	= 99999999999;
	highest	= 0;
	
}

draw_text(window_width - string_width(fps), 0, fps);
draw_text(window_width - string_width(fps_real), 16, fps_real);
draw_text(window_width - string_width(fps_real), 32, highest);
draw_text(window_width - string_width(fps_real), 48, lowest);
draw_text(window_width - string_width(fps_real), 64, (highest + lowest) / 2);

draw_text(window_width - string_width("Highest        "), 32, "Highest        ");
draw_text(window_width - string_width("Lowest         "), 48, "Lowest         ");
draw_text(window_width - string_width("Average        "), 64, "Average        ");
