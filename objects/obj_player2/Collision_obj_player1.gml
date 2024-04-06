// obj_player2 collision with obj_player1

if (place_meeting(x, y, obj_player1)) {
    // Move obj_player2 to a non-overlapping position
    var moveX = obj_player1.sprite_width - sprite_width;
    var moveY = obj_player1.sprite_height - sprite_height;
    move_outside_solid(direction, max(moveX, moveY));
}

