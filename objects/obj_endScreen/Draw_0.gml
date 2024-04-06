/// @description Insert description here
// You can write your code in this editor
if (visible && !global.paused) {
    //draw_set_halign(fa_center);
    //draw_set_valign(fa_middle);
    draw_text(room_width / 2, room_height / 2 - 20, global.winner);
    draw_text(room_width / 2, room_height / 2 + 20, "Press Enter to restart the game");
}