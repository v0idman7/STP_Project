/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39739B09
/// @DnDArgument : "code" "if (hp <= 0){$(13_10)	instance_destroy();$(13_10)	if (obj_player1.obj_for_door_open > 0)$(13_10)	obj_player1.obj_for_door_open -= 1;}$(13_10)"
if (hp <= 0){
	instance_destroy();
	if (obj_player1.obj_for_door_open > 0)
	obj_player1.obj_for_door_open -= 1;}