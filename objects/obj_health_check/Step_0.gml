if (global.health == 0) {
	show_debug_message("Out of health");
	
	with (all) {
	    if (id != other.id && id != inst_7BDBCDCB) {
	        instance_destroy();
	    }
	}
	
	
	room_goto(rm_gameover);

	}