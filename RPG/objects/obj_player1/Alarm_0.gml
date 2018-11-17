/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 16B0796F
/// @DnDArgument : "code" "var damageArrow = instance_create_depth(x+32, y+32, 0, obj_arrow_damage);$(13_10)damageArrow.creator = id;"
var damageArrow = instance_create_depth(x+32, y+32, 0, obj_arrow_damage);
damageArrow.creator = id;