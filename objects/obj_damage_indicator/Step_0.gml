// obj_damage_indicator step

if (damage != -1) {
	damage_text = string(damage);
}

if (indicator_timer >= 0) {
	indicator_timer--;
} else {
	instance_destroy();
}