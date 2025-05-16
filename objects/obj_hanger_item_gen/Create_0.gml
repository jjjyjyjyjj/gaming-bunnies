// Inherit parent's create
event_inherited()

// Initialize
hanger = undefined;
hanger_item = undefined;
num_citem = array_length(global.valid_items) - 1;

if (num_citem >= 0) {
    // Pick a random item key
    randomise();
    var random_key = irandom_range(0, num_citem);

    // Assign chosen item
    hanger_item = global.valid_items[random_key];

    // Remove the item from the array
    array_delete(global.valid_items, random_key, 1);

    // Position
    x = 1200;
    y = 275;

    // Debug
    show_debug_message("Hanger item " + string(hanger_item) + " created");
} else {
    show_debug_message("No more items to choose from.");
    instance_destroy(); // No valid items left
}
