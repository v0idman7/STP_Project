/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78ED3648
/// @DnDArgument : "code" "var anim_length = 9;$(13_10)var frame_size = 64;$(13_10)var anim_speed = 12;$(13_10)$(13_10)if		(moveX < 0) y_frame = 9;$(13_10)else if (moveX > 0) y_frame = 11;$(13_10)else if (moveY < 0) y_frame = 8;$(13_10)else if (moveY > 0) y_frame = 10;$(13_10)else				x_frame = 0;$(13_10)$(13_10)var xx = x - x_offset;$(13_10)var yy = y - y_offset;$(13_10)$(13_10)draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_body, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_head, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_shoulder, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_hand, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)$(13_10)if  (x_frame < anim_length - 1) { x_frame += anim_speed/60; }$(13_10)else							{ x_frame = 1; }$(13_10)$(13_10)draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);$(13_10)"
var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

if		(moveX < 0) y_frame = 9;
else if (moveX > 0) y_frame = 11;
else if (moveY < 0) y_frame = 8;
else if (moveY > 0) y_frame = 10;
else				x_frame = 0;

var xx = x - x_offset;
var yy = y - y_offset;

draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_body, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_head, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_shoulder, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_hand, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);


if  (x_frame < anim_length - 1) { x_frame += anim_speed/60; }
else							{ x_frame = 1; }

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);