// obj_player draw

draw_self();

// display combat move
if (charge)  { draw_text(x-string_width("charging")/2, y-sprite_height/3*2, "charging"); }
else if (defend) { draw_text(x-string_width("block")/2, y-sprite_height/3*2, "block"); }

// draw charging bar
if (charge_width_curr > 0) {
	draw_set_alpha(0.5);
	draw_rectangle_color(x-charge_width_target/2, y+35, x-charge_width_target/2+charge_width_target, y+50, c_black, c_black, c_black, c_black, true);
	draw_set_alpha(1);
	draw_rectangle_color(x-charge_width_target/2, y+35, x-charge_width_target/2+charge_width_curr, y+50, charge_bar_color, charge_bar_color, charge_bar_color, charge_bar_color, false);
}