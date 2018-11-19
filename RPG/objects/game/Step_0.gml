/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04031073
/// @DnDArgument : "code" "if(keyboard_check_pressed(ord("0")))	{ debug = !debug }$(13_10)if(keyboard_check_pressed(vk_escape))	{ game_end(); }$(13_10)$(13_10)if(keyboard_check_pressed(vk_tab)) {$(13_10)	if pause_ {$(13_10)		pause_ = false;$(13_10)		if (sprite_exists(pause_sprite_)){$(13_10)			sprite_delete(pause_sprite_);$(13_10)		}$(13_10)		instance_activate_all();$(13_10)		audio_play_sound(a_unpause, 5, false);$(13_10)	} else {$(13_10)		pause_ = true;$(13_10)		pause_sprite_ = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, false, false, 0, 0);$(13_10)		instance_deactivate_all(true);$(13_10)		var _array_size = array_length_1d(global.inventory);$(13_10)		for (var _i=0; _i<_array_size; _i++){$(13_10)			instance_activate_object(global.inventory[_i]);$(13_10)		}$(13_10)		$(13_10)		audio_play_sound(a_pause, 5, false);$(13_10)	}$(13_10)}"
if(keyboard_check_pressed(ord("0")))	{ debug = !debug }
if(keyboard_check_pressed(vk_escape))	{ game_end(); }

if(keyboard_check_pressed(vk_tab)) {
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