event_inherited();

if (team != global.team) { exit }

bMat_timer --
if (bMat_timer < 1) { 
	
	global.r_bMat += 10;
	bMat_timer = 90;
	
}
