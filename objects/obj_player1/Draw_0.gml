// obj_player1 draw

event_inherited();

if (keyboard_check(ord("C")))  { draw_text(x, y-sprite_height, "charging");  }
else if (keyboard_check(ord("X"))) { draw_text(x, y-sprite_height, "block!"); }


//draw_text (40,100, move_dir)