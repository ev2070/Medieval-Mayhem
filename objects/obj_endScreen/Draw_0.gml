/// @description Insert description here
// You can write your code in this editor

// Make visible after GAME OVER is displayed
if (visible && obj_game_manager.game_over_scale_factor > 1 && !obj_game_manager.post_game) {
    //draw_set_halign(fa_center);
    //draw_set_valign(fa_middle);
    draw_text(room_width/2-string_width(global.winner)/2, room_height/2-string_height(global.winner)/2-20, global.winner);
    draw_text(room_width/2-string_width("Press Enter to restart the game")/2, room_height/2-string_height("Press Enter to restart the game")+20, "Press Enter to restart the game");
}