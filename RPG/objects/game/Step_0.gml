/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04031073
/// @DnDArgument : "code" "if(keyboard_check_pressed(ord("0")))	{ debug = !debug }$(13_10)if(keyboard_check_pressed(vk_escape))	{ game_end(); }"
if(keyboard_check_pressed(ord("0")))	{ debug = !debug }
if(keyboard_check_pressed(vk_escape))	{ game_end(); }