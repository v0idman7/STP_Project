/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68E1F062
/// @DnDArgument : "code" "dg = 1;$(13_10)kb = 30;$(13_10)creator = noone;$(13_10)speed_arrow = 10;$(13_10)$(13_10)if (obj_player1.pos == "right"){$(13_10)	image_angle = 0;$(13_10)	way = 6;$(13_10)}$(13_10)$(13_10)if (obj_player1.pos == "down"){$(13_10)	image_angle = 270;$(13_10)	way = 2;$(13_10)}$(13_10)if (obj_player1.pos == "left"){$(13_10)	image_angle = 180;$(13_10)	way = 4;$(13_10)}$(13_10)if (obj_player1.pos == "up"){$(13_10)	image_angle = 90;$(13_10)	way = 8;$(13_10)} $(13_10)$(13_10)$(13_10)"
dg = 1;
kb = 30;
creator = noone;
speed_arrow = 10;

if (obj_player1.pos == "right"){
	image_angle = 0;
	way = 6;
}

if (obj_player1.pos == "down"){
	image_angle = 270;
	way = 2;
}
if (obj_player1.pos == "left"){
	image_angle = 180;
	way = 4;
}
if (obj_player1.pos == "up"){
	image_angle = 90;
	way = 8;
}