var clothing_item = instance_create_layer(x,y,"Instances", obj_hanger_item_gen);
ds_queue_enqueue(global.hanger_items, clothing_item);
alarm[0] = global.spawn_speed;