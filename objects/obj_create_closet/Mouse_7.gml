audio_play_sound(SelectSound, 10, false);

global.clicked = chosen_hitem;
show_debug_message(string(chosen_hitem));

instance_destroy(item_instance);

var hanger_item = ds_queue_head(global.hanger_items).hanger_item;

if (chosen_hitem == hanger_item) {
	show_debug_message("It's a match!:" + string(hanger_item));
	global.score += 10;
	global.clicked = undefined;
	var destroy = ds_queue_dequeue(global.hanger_items); // actually dequeue it
	instance_destroy(destroy);
	
} else {
	global.health -= 1;
}


show_debug_message("executing left released code");
