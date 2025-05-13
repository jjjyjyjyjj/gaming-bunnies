//inherite parent's create
event_inherited()

// initialise
hanger_item = undefined;
num_citem = array_length(global.valid_items) - 1;
dequeued_item = undefined;

// Pick a random item key 
randomise ();
var random_key = irandom_range(0, num_citem);

// Assign chosen item sprite
hanger_item = global.valid_items[random_key];
ds_queue_enqueue(global.hanger_items, hanger_item);

x = 1200;
y = 275;

//debugging message
show_debug_message("Hanger item" + string(hanger_item)+ " created");