//if(x > 250) {
//	if (global.clicked){
//		// user clicked correct closet item
//		if (dequeued_item == global.clicked){
//		show_debug_message("It's a match!");
//		global.score += 10;
//		global.clicked = undefined;}
//		else {global.health -= 1;}
//	}
//	event_perform_object(obj_hanger_item_gen, ev_draw, 0);} 

// x <= 250
if (x <= 250){
	global.health -= 1;
	show_debug_message("Hit max distance");
	var dropped_item = ds_queue_dequeue(global.hanger_items);
	instance_destroy(dropped_item.hanger);

	event_perform_object(obj_hanger_item_gen, ev_destroy, 0);
	show_debug_message(string(global.health));}

if (global.health == 0) {
	show_debug_message("Out of health");
	room_goto(menu_screen);}
