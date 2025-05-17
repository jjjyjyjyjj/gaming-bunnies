// Movement
// moves left at (specified speed) px/frame
x-= global.item_speed; 

//dequeued_item = ds_queue_dequeue(global.hanger_items);
//event_perform_object(obj_health_and_score_update, ev_step, 0)

if (x <= 250){
	global.health -= 1;
	show_debug_message("Hit max distance");
	
	var string_sprite = sprite_get_name(hanger_item);
	
	var list = ds_map_find_value(global.hanger_items, string_sprite);
	
    var deleted = list[| 0];
    ds_list_delete(list, 0);

    // Destroy instances
    instance_destroy(deleted.hanger); 
    instance_destroy(deleted);
	
}



