// Inherit the parent event
event_inherited();

//if (point_distance(obj_player1.x, obj_player1.y, obj_player2.x, obj_player2.y)) {
	
//}
 if current_hp = 0 {
	obj_player2.fallen = true
	current_hp = max_hp
	global.score_player1 += 1;
}