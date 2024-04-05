// obj_game_manager draw

if (room == Room1 && pre_game) {
	var text_width = string_width(fight);
	var text_height = string_height(fight);
	var center_x = room_width/2 - text_width * fight_scale_factor/2;
	var center_y = room_height/ 2 - text_height * fight_scale_factor/2;

    draw_set_color(c_yellow);
    draw_text_transformed(center_x, center_y, fight, fight_scale_factor, fight_scale_factor, 0);
}

