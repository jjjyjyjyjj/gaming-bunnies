// initialise
chosen_hitem = undefined;
global.closet_items = [
    bag,
    boho_top,
    jeans,
	brown_boots,
	denim_skirt,
	dress,
	glasses,
	gold_bracelet,
	gold_earring,
	gold_watch,
	jeans,
	pink_top,
	silver_bracelet,
	silver_earring,
	tabi,
	white_boots,
	white_crop]
	
global.hanger_items = ds_queue_create();
	
	
num_citem = array_length(global.closet_items) - 1;

// Pick a random item key 
randomise ();
var random_key = irandom_range(0, num_citem);

// Assign chosen item sprite
chosen_hitem = global.closet_items[random_key];
ds_queue_enqueue(global.hanger_items, chosen_hitem);

x = 1200;
y = 275;