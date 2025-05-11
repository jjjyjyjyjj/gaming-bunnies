len_list = array_length(global.closet_items);

// Pick a random item key
var key_index = irandom_range(0, len_list - 1);

// Assign chosen item sprite
chosen_hitem = global.closet_items[key_index];

var item_instance = instance_create_layer(x, y, "Instances", obj_closet_item);

item_instance.sprite_index = chosen_hitem;

instance_create_layer(x, y, "Instances", obj_sq_block);