if (global.score >= 50 && global.score < 100) {
    show_debug_message("lvl increased: " + string(global.score));
    global.stage = 2;
    global.item_speed = 4;
    global.spawn_speed = 60;
}

else if(100 <=  global.score && global.score < 200) {
	// go to stage 3
	global.stage = 3;
	global.item_speed = 6;
	global.spawn_speed = 30;}
	
else if (global.score >= 200) {
	room_goto(Room1);
}
	
