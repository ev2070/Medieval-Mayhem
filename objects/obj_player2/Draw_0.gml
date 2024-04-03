// obj_player2 draw

event_inherited();


if (keyboard_check(ord("N")))  { draw_text(x, y-sprite_height, "charging");  }
else if (keyboard_check(ord("M"))) { draw_text(x, y-sprite_height, "block!"); }
