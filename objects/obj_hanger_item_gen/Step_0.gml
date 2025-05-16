// Movement
// moves left at (specified speed) px/frame
x-= global.item_speed; 

//dequeued_item = ds_queue_dequeue(global.hanger_items);
event_perform_object(obj_health_and_score_update, ev_step, 0)