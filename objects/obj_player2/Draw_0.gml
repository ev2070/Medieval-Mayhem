// obj_player2 draw

event_inherited();
	
if (keyboard_check(ord("N")))  { draw_text(x, y-sprite_height, "slap!");  }
else if (keyboard_check(ord("M")))  { draw_text(x, y-sprite_height, "trip!");  }
else if (keyboard_check(188))  { draw_text(x, y-sprite_height, "push!");  }
else if (keyboard_check(190)) { draw_text(x, y-sprite_height, "block!"); }