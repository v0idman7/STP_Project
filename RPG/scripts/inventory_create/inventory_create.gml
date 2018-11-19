/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D5EF3DD
/// @DnDArgument : "code" "var _size = argument0;$(13_10)//global.inventory[_i] = noone;$(13_10)$(13_10)var _i = 0;$(13_10)repeat (_size) {$(13_10)	global.inventory[_i] = noone;$(13_10)	_i++;$(13_10)}"
var _size = argument0;
//global.inventory[_i] = noone;

var _i = 0;
repeat (_size) {
	global.inventory[_i] = noone;
	_i++;
}