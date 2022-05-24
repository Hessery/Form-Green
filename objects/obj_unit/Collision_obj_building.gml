if (global.net_role != net_role_host) { exit }

var dir = point_direction(other.x + 16, other.y + 16, x, y)

x = x + lengthdir_x(move_speed, dir);
y = y + lengthdir_y(move_speed, dir);
