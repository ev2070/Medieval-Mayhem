/// @description Insert description here
// You can write your code in this editor

draw_text(room_width/2-string_width("Score")/2+5, 30, "Score");
var scores = string(global.score_player1) + " : " + string(global.score_player2)
draw_text(room_width/2-string_width(scores)/2+5, 50, scores);