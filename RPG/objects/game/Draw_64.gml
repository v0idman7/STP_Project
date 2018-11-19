/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A25BF7F
/// @DnDArgument : "code" "if sprite_exists(pause_sprite_){$(13_10)	draw_sprite_ext(pause_sprite_, 0, 0, 0, 1, 1, 0, c_white, 1);$(13_10)	draw_set_alpha(0.6);$(13_10)	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);$(13_10)	draw_set_alpha(1);$(13_10)}$(13_10)$(13_10)inventory_draw(4, 144);$(13_10)"
if sprite_exists(pause_sprite_){
	draw_sprite_ext(pause_sprite_, 0, 0, 0, 1, 1, 0, c_white, 1);
	draw_set_alpha(0.6);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

inventory_draw(4, 144);