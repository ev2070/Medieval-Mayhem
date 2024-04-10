/// @description Insert description here
// You can write your code in this editor

draw_text_color(room_width/2-string_width("Score")/2+5, 30, "Score", c_yellow, c_yellow, c_yellow, c_yellow, 1);
var scores = string(global.score_player1) + " : " + string(global.score_player2)
draw_text_color(room_width/2-string_width(scores)/2+5, 50, scores, c_yellow, c_yellow, c_yellow, c_yellow, 1);