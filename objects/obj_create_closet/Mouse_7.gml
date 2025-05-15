audio_play_sound(SelectSound, 10, false);

global.clicked = chosen_hitem;
show_debug_message(string(chosen_hitem) + " pressed");

instance_destroy(item_instance);

show_debug_message("executing left released code");