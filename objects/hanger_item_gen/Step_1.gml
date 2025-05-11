// Movement
x -= 2; // moves left at 4px/frame

// Destroy if it reaches the left area
if (x < 200) {
    // Optional: Compare with global before destroying
    if (chosen_hitem == global.user_item) {
        show_debug_message("It's a match!");
    }
    instance_destroy();
}