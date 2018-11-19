/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 76F00B20
/// @DnDArgument : "code" "var _object = argument0;$(13_10)if instance_exists(_object) {$(13_10)	return _object.id;$(13_10)} else {$(13_10)	var _instance = instance_create_layer(0, 0, "Instances", _object);$(13_10)	_instance.persistent = true;$(13_10)	return _instance;$(13_10)}"
var _object = argument0;
if instance_exists(_object) {
	return _object.id;
} else {
	var _instance = instance_create_layer(0, 0, "Instances", _object);
	_instance.persistent = true;
	return _instance;
}