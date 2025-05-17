
if (!global.initialized){
	global.item_speed = 3;
	global.spawn_speed = 60;
	global.health = 3;
	global.score = 0;
	global.stage = 1;
	global.last_item = undefined;
	global.clicked = undefined;
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
		white_crop];
		
	
	global.hanger_items = ds_map_create();

	var keys = [
	    "bag", "boho_top", "jeans", "brown_boots", "denim_skirt", "dress",
	    "glasses", "gold_bracelet", "gold_earring", "gold_watch", "pink_top",
	    "silver_bracelet", "silver_earring", "tabi", "white_boots", "white_crop"
	];

	// Initialize all keys with empty ds_lists
	for (var i = 0; i < array_length(keys); i++) {
	    var key = keys[i];
	    var list = ds_list_create();
	    ds_map_add(global.hanger_items, key, list);
	}
	
	
	global.initialized = true;
	
	global.valid_items = ds_list_create();
	
	// creating closet
	drawx = 656;
	drawy = 464;
	for (var j = 0; j < 3; j++) {
		for (var i = 0; i < 4; i++) {
			instance_create_layer(drawx, drawy, "Instances", obj_create_closet);
			drawx += 112;
		}
		drawx = 656;
		drawy += 112;
	}
	
	// initializing spawner
	instance_create_layer(1200, 304, "Instances", obj_hanger_item_spawner);
	
	// score ui
	instance_create_layer(368, 16, "Instances", obj_scoreui);
	
	instance_create_layer(16, 16, "Instances", obj_stages_and_itemspeed_update);
	
	instance_create_layer(960, 16, "Instances", obj_hearts);
	
	instance_create_layer(0, 0, "Instances", obj_health_check);
}
