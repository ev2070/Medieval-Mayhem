/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
draw_text(room_width/2 - 300, room_height/2 - 250, "Player 1")
draw_set_color(c_red)
draw_text(room_width/2 - 300, room_height/2 - 220, player1)
draw_set_color(c_black)
draw_text(room_width/2 + 250, room_height/2 - 250, "Player 2")
draw_set_color(c_red)
draw_text(room_width/2 + 250, room_height/2 - 220, player2)
draw_set_color(c_black)

draw_text(room_width/2 - 300, room_height/2 + 100, "Player1: WASD to move, long press C to charge and attack, X to block")
draw_text(room_width/2 - 300, room_height/2 + 150, "Player2: IJKL to move, long press N to charge and attack, M to block")
draw_text(room_width/2 - 100, room_height/2 + 200, "Press enter to play")