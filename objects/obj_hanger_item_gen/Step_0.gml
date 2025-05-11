// Movement
x-= 2; // moves left at 4px/frame

// Destroy if it reaches the left area
if (x < 200){
// Compare with global before destroying
	if (chosen_hitem == global.clicked) {
		show_debug_message("It's a match!");
		global.score += 10;
		instance_destroy();
		}
	global.health -= 1;
	instance_destroy();
}