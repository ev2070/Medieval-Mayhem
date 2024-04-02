/// @description Insert description here
// You can write your code in this editor
if (timer > 0) {
    timer -= 1; // Decrement the timer by 1 each frame
} else {
    // When the timer reaches 0, restart the game
    game_restart();
}