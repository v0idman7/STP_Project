/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 37509FDD
/// @DnDArgument : "code" "var arrow_hit = instance_create_depth(x-14, y-20, 0, obj_arrow_hit);$(13_10)if(image_angle = 0){$(13_10)arrow_hit.y_frame = 0;}$(13_10)if(image_angle = 90){$(13_10)arrow_hit.y_frame = 1;}$(13_10)if(image_angle = 180){$(13_10)arrow_hit.y_frame = 2;}$(13_10)if(image_angle = 270){$(13_10)arrow_hit.y_frame = 3;}$(13_10)$(13_10)instance_destroy();"
var arrow_hit = instance_create_depth(x-14, y-20, 0, obj_arrow_hit);
if(image_angle = 0){
arrow_hit.y_frame = 0;}
if(image_angle = 90){
arrow_hit.y_frame = 1;}
if(image_angle = 180){
arrow_hit.y_frame = 2;}
if(image_angle = 270){
arrow_hit.y_frame = 3;}

instance_destroy();