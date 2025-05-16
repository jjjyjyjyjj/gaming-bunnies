if (!global.initialized){
	global.item_speed = 3;
	global.spawn_speed = 60;
	global.health = 3;
	global.score = 0;
	global.stage = 1;
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
		
	global.hanger_items = ds_queue_create();
	global.initialized = true;
	
	global.valid_items = [];
	
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
}
