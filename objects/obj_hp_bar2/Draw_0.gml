/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
// event_inherited();

draw_set_color(c_red);
draw_rectangle(x, y, x + bar_width, y + bar_height, false);

draw_set_color(c_lime);
draw_rectangle(x + bar_width - (current_hp / max_hp) * bar_width, y, x + bar_width, y + bar_height, false);

draw_text(x+bar_width-string_width(current_hp),y-40,string(current_hp));
draw_text_color(x+bar_width-string_width(obj_player2.name),y+35,obj_player2.name, c_navy, c_navy, c_navy, c_navy, 1);

