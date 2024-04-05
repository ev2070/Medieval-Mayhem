/// @description Insert description here
// You can write your code in this editor
if (!global.paused) {
	if (timer > 0) {
	    timer -= 1; // Decrement the timer by 1 each frame
	} 
	if (timer <= 0) {
	    if (global.score_player1 > global.score_player2) {
	        global.winner = "Player 1 Wins!";
	    } else if (global.score_player2 > global.score_player1) {
	        global.winner = "Player 2 Wins!";
	    } else {
	        global.winner = "It's a tie!";
	    }
		if (!instance_exists(obj_endScreen)) {
	        var end_screen = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_endScreen);
	    }
    
	    obj_endScreen.visible = true;
	}
}