audio_play_sound(SelectSound, 10, false);

var string_sprite = sprite_get_name(chosen_hitem);

show_debug_message(string(string_sprite));

var list = ds_map_find_value(global.hanger_items, string_sprite);

if (ds_list_size(list) != 0) {
    show_debug_message("It's a match!:" + string(string_sprite));
    global.score += 10;

    // Get and remove the first item
    var deleted = list[| 0];
    ds_list_delete(list, 0);

    // Destroy instances
    instance_destroy(deleted.hanger); 
    instance_destroy(deleted);
	
} else {
	global.health -= 1;
}

// remove itself from valid items
var ind = ds_list_find_index(global.valid_items, chosen_hitem);

ds_list_delete(global.valid_items, ind);

// destroy itself and make a new button in its place

// Pick a random item key
var key_index = irandom_range(0, len_list - 1);

// Assign chosen item sprite
chosen_hitem = global.closet_items[key_index];

instance_destroy(item_instance);

item_instance = instance_create_layer(x, y, "Instances", obj_closet_item);

item_instance.sprite_index = chosen_hitem;

ds_list_add(global.valid_items, chosen_hitem);

item_instance.depth = -9999;

