// obj_player1 draw

event_inherited();

if (charge)  { draw_text(x, y-sprite_height, "charging");  }
else if (defend) { draw_text(x, y-sprite_height, "block!"); }

//block display
if defend {
	draw_set_alpha(0.3)
	draw_ellipse_color(x-35,y-35,x+35,y+35,c_white,c_aqua,false)
	
}

draw_set_alpha(1)
