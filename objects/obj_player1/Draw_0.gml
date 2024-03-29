// obj_player1 draw

event_inherited();

if (keyboard_check(vk_shift))  { draw_text(x, y-sprite_height, "slap!");  }
else if (keyboard_check(ord("Z")))  { draw_text(x, y-sprite_height, "trip!");  }
else if (keyboard_check(ord("X")))  { draw_text(x, y-sprite_height, "push!");  }
else if (keyboard_check(ord("C"))) { draw_text(x, y-sprite_height, "block!"); }
