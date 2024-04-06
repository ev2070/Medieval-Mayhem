// obj_player1 collision with obj_player2

if (place_meeting(x, y, obj_player2)) {
    // Move obj_player1 to a non-overlapping position
    var moveX = obj_player2.sprite_width - sprite_width;
    var moveY = obj_player2.sprite_height - sprite_height;
    move_outside_solid(direction, max(moveX, moveY));
}