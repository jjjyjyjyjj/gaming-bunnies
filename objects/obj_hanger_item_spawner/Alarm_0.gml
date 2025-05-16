var clothing_item = instance_create_layer(x,y,"Instances", obj_hanger_item_gen);
var hang_item = instance_create_layer(x,y,"Instances", obj_clothing_hanger);
var hanger_sprite_index = clothing_item.hanger_item;
var hanger_sprite_name = sprite_get_name(hanger_sprite_index);

//show_debug_message("global.hanger_items type: " + typeof(global.hanger_items));
show_debug_message("hanger_sprite_name: " + string(hanger_sprite_name));

//show_debug_message("type" + typeof(global.hanger_items[hanger_sprite_name]));

ds_list_add(ds_map_find_value(global.hanger_items, hanger_sprite_name), clothing_item);

clothing_item.hanger = hang_item;
alarm[0] = global.spawn_speed;
