/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68E1F062
/// @DnDArgument : "code" "dg = 1;$(13_10)kb = 30;$(13_10)creator = noone;$(13_10)$(13_10)if (obj_player1.pos == "right"){$(13_10)	image_angle = 270;$(13_10)}$(13_10)if (obj_player1.pos == "down"){$(13_10)	image_angle = 180;$(13_10)}$(13_10)if (obj_player1.pos == "left"){$(13_10)	image_angle = 90;$(13_10)} $(13_10) alarm[0] = 10;$(13_10)$(13_10)$(13_10)"
dg = 1;
kb = 30;
creator = noone;

if (obj_player1.pos == "right"){
	image_angle = 270;
}
if (obj_player1.pos == "down"){
	image_angle = 180;
}
if (obj_player1.pos == "left"){
	image_angle = 90;
} 
 alarm[0] = 10;