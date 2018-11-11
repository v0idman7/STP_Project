/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39739B09
/// @DnDArgument : "code" "event_inherited();$(13_10)if (hp <= 0){$(13_10)	if (obj_player1.obj_for_door_open > 0)$(13_10)	obj_player1.obj_for_door_open -= 1;}$(13_10)"
event_inherited();
if (hp <= 0){
	if (obj_player1.obj_for_door_open > 0)
	obj_player1.obj_for_door_open -= 1;}