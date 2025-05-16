audio_play_sound(SelectSound, 10, false);

global.clicked = chosen_hitem;
show_debug_message(string(chosen_hitem));

var hanger_item = ds_queue_head(global.hanger_items).hanger_item;

if (chosen_hitem == hanger_item) {
	show_debug_message("It's a match!:" + string(hanger_item));
	global.score += 10;
	global.clicked = undefined;
	var destroy = ds_queue_dequeue(global.hanger_items); // actually dequeue it
	instance_destroy(destroy.hanger); 
	instance_destroy(destroy);

	
} else {
	global.health -= 1;
}

// destroy itself and make a new button in its place

// Pick a random item key
var key_index = irandom_range(0, len_list - 1);

// Assign chosen item sprite
chosen_hitem = global.closet_items[key_index];

instance_destroy(item_instance);

item_instance = instance_create_layer(x, y, "Instances", obj_closet_item);

item_instance.sprite_index = chosen_hitem;

array_push(global.valid_items, chosen_hitem);

item_instance.depth = -9999;

