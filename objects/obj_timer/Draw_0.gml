/// @description Insert description here
// You can write your code in this editor
var seconds_left = floor(timer / 60); // Convert frames to seconds
var seconds_left_str = string(seconds_left) + " seconds left";
draw_text_color(room_width/2-string_width(seconds_left_str)/2, y, seconds_left_str, timer_color, timer_color, timer_color, timer_color, 1); // Display the remaining seconds at the object's position