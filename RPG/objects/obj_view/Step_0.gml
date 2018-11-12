/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 69884036
/// @DnDArgument : "code" "if (instance_exists(obj_player1)){$(13_10)x += (obj_player1.x+32 - x)*0.1;$(13_10)y += (obj_player1.y+32 - y)*0.1;}$(13_10)"
if (instance_exists(obj_player1)){
x += (obj_player1.x+32 - x)*0.1;
y += (obj_player1.y+32 - y)*0.1;}