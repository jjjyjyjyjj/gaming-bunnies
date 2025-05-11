if (global.health > 0) {
	if (curr_hitem == global.clicked) {
		show_debug_message("It's a match!");
		global.score += 10;
		instance_destroy();
		}
	else global.health -= 1;
}
else room_goto(0);
