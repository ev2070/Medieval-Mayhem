// obj_game_manager draw
draw_set_font(Font1);

// Display a growing FIGHT
if (room == Room1 && pre_game) {
	var text_width = string_width(fight);
	var text_height = string_height(fight);
	var center_x = room_width/2 - text_width * fight_scale_factor/2;
	var center_y = room_height/ 2 - text_height * fight_scale_factor/2;

    draw_set_color(c_yellow);
    draw_text_transformed(center_x, center_y, fight, fight_scale_factor, fight_scale_factor, 0);
}

// Display a growing GAME OVER
if (room == Room1 && post_game) {
	var text_width = string_width(game_over);
	var text_height = string_height(game_over);
	var center_x = room_width/2 - text_width * game_over_scale_factor/2;
	var center_y = room_height/ 2 - text_height * game_over_scale_factor/2;

    draw_set_color(c_yellow);
    draw_text_transformed(center_x, center_y, game_over, game_over_scale_factor, game_over_scale_factor, 0);
}

