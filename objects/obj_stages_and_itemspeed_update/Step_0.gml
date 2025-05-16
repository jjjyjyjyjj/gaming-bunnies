if (50 <= global.score < 150 ) {
	// go to stage 2
	global.stage = 2;
	global.item_speed = 4;
	global.spawn_speed = 60;}

else if(150 <=  global.score < 300) {
	// go to stage 3
	global.stage = 3;
	global.item_speed = 6;
	global.spawn_speed = 30;}
	
else {
	//game completed
	room_goto(menu_screen);}