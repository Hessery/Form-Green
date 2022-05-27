event_inherited();

if (global.net_role != net_role_host) { exit }
if (other.team != team) { other.hp -= 1 }
