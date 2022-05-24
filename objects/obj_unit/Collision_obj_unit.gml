if (global.net_role != net_role_host) { exit }

var moving			= (x != desx || y != desy);
var other_moving	= (other.x != other.desx || other.y != other.desy);
var dir				= point_direction(other.x, other.y, x, y);

if (x = other.x && y = other.y) { y += sign(id - other.id) }

if (!moving) {

	if (other_moving) {
	
		desx = desx + lengthdir_x(move_speed, dir);
		desy = desy + lengthdir_y(move_speed, dir);
	
	}

	if (!other_moving) {
	
		desx = desx + lengthdir_x(move_speed, dir);
		desy = desy + lengthdir_y(move_speed, dir);
	
	}

} else {
	
	x = x + lengthdir_x(1, dir);
	y = y + lengthdir_y(1, dir);
	
}
