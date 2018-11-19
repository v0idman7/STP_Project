/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B2CA0FD
/// @DnDArgument : "code" "var _value = argument0;$(13_10)var _array = argument1;$(13_10)var _array_size = array_length_1d(_array);$(13_10)$(13_10)for(var _i=0; _i<_array_size; _i++){$(13_10)	if (_value == _array[_i]) {$(13_10)		return _i;$(13_10)	}$(13_10)}$(13_10)$(13_10)return -1;"
var _value = argument0;
var _array = argument1;
var _array_size = array_length_1d(_array);

for(var _i=0; _i<_array_size; _i++){
	if (_value == _array[_i]) {
		return _i;
	}
}

return -1;