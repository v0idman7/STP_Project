/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04031073
/// @DnDArgument : "code" "if(keyboard_check_pressed(ord("0")))	{ debug = !debug }$(13_10)if(keyboard_check_pressed(vk_escape))	{ game_end(); }$(13_10)$(13_10)if pause_ {$(13_10)	var _array_size = array_length_1d(global.inventory); $(13_10)	if(keyboard_check_pressed(vk_right)){	//перемещения по инвентарю$(13_10)		item_index_ = min(item_index_+1, _array_size-1);$(13_10)		audio_play_sound(a_menu_move, 1, false);$(13_10)	}$(13_10)	if(keyboard_check_pressed(vk_left)){$(13_10)		item_index_ = max(item_index_-1, 0);$(13_10)		audio_play_sound(a_menu_move, 1, false);$(13_10)	}$(13_10)	if(keyboard_check_pressed(ord("Z"))){	//выбор в инвентаре$(13_10)		global.item[0] = global.inventory[item_index_];$(13_10)		audio_play_sound(a_menu_select, 3, false);$(13_10)	}$(13_10)	if(keyboard_check_pressed(ord("X"))){$(13_10)		global.item[1] = global.inventory[item_index_];$(13_10)		audio_play_sound(a_menu_select, 3, false);$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if(keyboard_check_pressed(vk_tab)) {	//рисуем инвентарь$(13_10)	if pause_ {$(13_10)		pause_ = false;$(13_10)		if (sprite_exists(pause_sprite_)){$(13_10)			sprite_delete(pause_sprite_);$(13_10)		}$(13_10)		instance_activate_all();$(13_10)		audio_play_sound(a_unpause, 5, false);$(13_10)	} else {$(13_10)		pause_ = true;$(13_10)		pause_sprite_ = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, false, false, 0, 0);$(13_10)		instance_deactivate_all(true);$(13_10)		var _array_size = array_length_1d(global.inventory);$(13_10)		for (var _i=0; _i<_array_size; _i++){$(13_10)			instance_activate_object(global.inventory[_i]);$(13_10)		}$(13_10)		$(13_10)		audio_play_sound(a_pause, 5, false);$(13_10)	}$(13_10)}"
if(keyboard_check_pressed(ord("0")))	{ debug = !debug }
if(keyboard_check_pressed(vk_escape))	{ game_end(); }

if pause_ {
	var _array_size = array_length_1d(global.inventory); 
	if(keyboard_check_pressed(vk_right)){	//перемещения по инвентарю
		item_index_ = min(item_index_+1, _array_size-1);
		audio_play_sound(a_menu_move, 1, false);
	}
	if(keyboard_check_pressed(vk_left)){
		item_index_ = max(item_index_-1, 0);
		audio_play_sound(a_menu_move, 1, false);
	}
	if(keyboard_check_pressed(ord("Z"))){	//выбор в инвентаре
		global.item[0] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
	}
	if(keyboard_check_pressed(ord("X"))){
		global.item[1] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
	}
	
}

if(keyboard_check_pressed(vk_tab)) {	//рисуем инвентарь
	if pause_ {
		pause_ = false;
		if (sprite_exists(pause_sprite_)){
			sprite_delete(pause_sprite_);
		}
		instance_activate_all();
		audio_play_sound(a_unpause, 5, false);
	} else {
		pause_ = true;
		pause_sprite_ = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, false, false, 0, 0);
		instance_deactivate_all(true);
		var _array_size = array_length_1d(global.inventory);
		for (var _i=0; _i<_array_size; _i++){
			instance_activate_object(global.inventory[_i]);
		}
		
		audio_play_sound(a_pause, 5, false);
	}
}