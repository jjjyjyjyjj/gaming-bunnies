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
	
num_citem = array_length(global.closet_items) - 1;

// Pick a random item key 
randomise ();
var random_key = irandom_range(0, num_citem);

// Assign chosen item sprite
chosen_hitem = global.closet_items[random_key];

x = 1200;
y = 150;