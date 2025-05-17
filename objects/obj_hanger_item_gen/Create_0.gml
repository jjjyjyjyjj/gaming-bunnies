
// Inherit parent's create
event_inherited()

// Initialize
hanger = undefined;
hanger_item = undefined;
num_citem = ds_list_size(global.valid_items) - 1;
chosen = false;

while (!chosen) {
	randomise();
    var random_key = irandom_range(0, num_citem);

    // Assign chosen item
    hanger_item = ds_list_find_value(global.valid_items, random_key);
	
	if (hanger_item != global.last_item) {
		chosen = true;
	}
}
	
// Remove the item from the array
ds_list_delete(global.valid_items, random_key);

// Position
x = 1200;
y = 275;
	