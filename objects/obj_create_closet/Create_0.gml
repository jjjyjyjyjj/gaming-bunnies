len_list = array_length(global.closet_items);

// Pick a random item key
var key_index = irandom_range(0, len_list - 1);

// Assign chosen item sprite
chosen_hitem = global.closet_items[key_index];

item_instance = instance_create_layer(x, y, "Instances", obj_closet_item);

show_debug_message("instance created" + string(chosen_hitem));

item_instance.sprite_index = chosen_hitem;

ds_list_add(global.valid_items, chosen_hitem);

item_instance.depth = -9999;

//block = instance_create_layer(x, y, "Instances", obj_sq_block);

