/// @description Insert description here
// You can write your code in this editor
draw_set_font(Font3)
draw_set_color(c_black)
draw_text(room_width/2 - 200, room_height/2 + 200, "Choose an avatar, press enter when done")

draw_text(144 + 30, 495, "Archer")
draw_text(144 - 30, 510, "Attacks from a distance")

draw_text(454 + 30, 495, "Knight")
draw_text(454 - 30, 510, "Charges attacks faster")


draw_text(761 + 50, 495, "Wizard")
draw_text(761 - 50, 510, "Wider range of attack damage")


draw_text(1110 + 50, 495, "Jouster")
draw_text(1110 - 70, 510, "Lunges forward during an attack")

draw_set_font(Font1)
draw_text(room_width/5*3.65, 100, "Player 2")
draw_text(room_width/5, 100, "Player 1")
draw_set_font(Font3)
draw_text(20, 145, "Use A (left) and D (right) buttons to choose an avatar")
draw_text(720, 145, "Use J (left) and L (right) buttons to choose an avatar")