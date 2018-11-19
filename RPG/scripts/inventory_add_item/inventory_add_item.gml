/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10C72CA8
/// @DnDArgument : "code" "var _item = singleton(argument0);$(13_10)$(13_10)var _item_index = array_find_index(_item, global.inventory);$(13_10)if _item_index == -1 {$(13_10)	var _array_size = array_length_1d(global.inventory);$(13_10)	for (var _i=0; _i<_array_size; _i++) {$(13_10)		if global.inventory[_i] == noone {$(13_10)			global.inventory[_i] = _item;$(13_10)			return true;$(13_10)		}$(13_10)	}$(13_10)} else {$(13_10)	return true;$(13_10)}$(13_10)$(13_10)return false;"
var _item = singleton(argument0);

var _item_index = array_find_index(_item, global.inventory);
if _item_index == -1 {
	var _array_size = array_length_1d(global.inventory);
	for (var _i=0; _i<_array_size; _i++) {
		if global.inventory[_i] == noone {
			global.inventory[_i] = _item;
			return true;
		}
	}
} else {
	return true;
}

return false;