draw_text(x,y-30,string(current_hp));

draw_set_color(c_red);
draw_rectangle(x, y, x + bar_width, y + bar_height, false);

draw_set_color(c_lime);
draw_rectangle(x, y, x + (current_hp / max_hp) * bar_width, y + bar_height, false);
