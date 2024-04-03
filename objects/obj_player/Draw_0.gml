// obj_player draw

draw_self();

draw_text(50,400, spr_up)

//draw_text(x,y+30,charge_timer)
if (charge_width_curr > 0) {
	draw_rectangle_color(x-charge_width_target/2, y+35, x+charge_width_curr-charge_width_target/2, y+50, charge_bar_color, charge_bar_color, charge_bar_color, charge_bar_color, false);
}