//if (!ds_queue_empty(global.hanger_items)){
	if (global.dequeued_item == undefined){
		global.dequeued_item = ds_queue_dequeue(global.hanger_items);}

with (obj_hanger_item_gen) {
	//show_debug_message("hanger item is " + string(hanger_item)+" dequeued item is " + string(global.dequeued_item));
if (x > 250) {
	if (global.clicked){
			// user clicked correct closet item
		if (global.dequeued_item == global.clicked){
			show_debug_message("dequeued is " + string(global.dequeued_item)+ ", clicked is " + string(global.clicked)+ " So, it's a match!");
			global.score += 10;
			if (hanger_item == global.dequeued_item){
				draw_hanger_item = false;
				instance_destroy();}
			//global.dequeued_item = undefined;
			global.dequeued_item = ds_queue_dequeue(global.hanger_items);
			global.clicked = undefined;
			exit;}
		else {
			show_debug_message("dequeue: " + string(global.dequeued_item));
			show_debug_message("wrong item clicked");
			global.health -= 1;
			global.clicked = undefined;
			show_debug_message("One health deleted");
			}
		}}
	
	// x <= 250
else if (x <= 250){
	global.health -= 1;
	show_debug_message("item "+ string(hanger_item)+" hit max distance");
	show_debug_message("health is now " + string(global.health));
	instance_destroy();
	if (hanger_item == global.dequeued_item){ global.dequeued_item = ds_queue_dequeue(global.hanger_items);}
	show_debug_message("new dequeue item "+string(global.dequeued_item));
	exit;}}


if (global.health <= 0) {
	show_debug_message("Out of health");
	room_goto(menu_screen);}
