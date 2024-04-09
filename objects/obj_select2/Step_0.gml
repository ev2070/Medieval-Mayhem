/// @description Insert description here
// You can write your code in this editor


//right keys
if (keyboard_check_pressed(ord("L")) and x = 191 + 5  and y = 450){
	x = 513 + 5
	y = 450
}
else if (keyboard_check_pressed(ord("L")) and x = 513 + 5 and y = 450){
	x = 832 + 5
	y = 450
}
else if (keyboard_check_pressed(ord("L")) and x = 832 + 5 and y = 450){
	x = 1182 + 5
	y = 450
}
else if (keyboard_check_pressed(ord("L")) and x = 1182 + 5 and y = 450){
	x = 191 + 5
	y = 450
}


//left keys
if (keyboard_check_pressed(ord("J")) and x = 191 + 5 and y = 450){
	x = 1182 + 5
	y = 450
}
else if (keyboard_check_pressed(ord("J")) and x = 513 + 5 and y = 450){
	x = 191 + 5
	y = 450
}
else if (keyboard_check_pressed(ord("J")) and x = 832 + 5 and y = 450){
	x = 513 + 5
	y = 450
}
else if (keyboard_check_pressed(ord("J")) and x = 1182 + 5 and y = 450){
	x = 832 + 5
	y = 450
}

