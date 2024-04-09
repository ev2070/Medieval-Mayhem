/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
myPlayer = obj_player1 //change for other player
image_alpha = 0 //for testing
damage = 0

canmove = false;

//range and scale of hitbox
hitrange = 48
hitboxscale = 1 //may change depending on selected character
activated = false

//hitbox activation timer ? 
hitbox_timer = 0
hitbox_normalatk_timer = 1
hitbox_chargeatk_timer = 1

//check for how long a button is held:
hold_length = 0

//attack type:
// - Huntress - Elongate hitbox, quick charge, lower damage.
// - Wizard - Widen Hitbox, longer charge, high damage.
// - Archer - Moving hitbox, more damage when enemy far.
// - Worm - Fire attack, stuns enemy longer
attack_type = " "
huntress_damage = 30
wizard_damage = 50
archer_damage = 1 //scale by distance from foe.
shot_dir = 0

worm_damage = 40 //Stun other player for longer.
