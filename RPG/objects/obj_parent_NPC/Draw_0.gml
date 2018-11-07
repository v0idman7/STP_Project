/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D10513D
/// @DnDArgument : "code" "var frame_size = 64;$(13_10)var anim_speed = 12;$(13_10)var anim_length = 6;$(13_10)$(13_10)var xx = x - x_offset;$(13_10)var yy = y - y_offset;$(13_10)$(13_10)	$(13_10)if		(moveX < 0) {y_frame = 9; pos = "left";}$(13_10)else if (moveX > 0) {y_frame = 11; pos = "right";}$(13_10)else if (moveY < 0) {y_frame = 8; pos = "up";}$(13_10)else if (moveY > 0) {y_frame = 10; pos = "down";}$(13_10)else x_frame = 0;$(13_10)$(13_10)$(13_10)$(13_10)if  (x_frame + (anim_speed/60) < anim_length)	{ x_frame += anim_speed/60; }$(13_10)else											{ x_frame = 1; }$(13_10)$(13_10)// DRAW CHARACTER SHADOW$(13_10)if(spr_shadow != -1) draw_sprite(spr_shadow, 0, x, y);$(13_10)if(spr_base != -1) draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)if(spr_body != -1) draw_sprite_part(spr_body, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)if(spr_legs != -1) draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)if(spr_head != -1) draw_sprite_part(spr_head, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)if(spr_shoulder != -1) draw_sprite_part(spr_shoulder, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)if(spr_feet != -1) draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)if(spr_hand != -1) draw_sprite_part(spr_hand, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)$(13_10)"
var frame_size = 64;
var anim_speed = 12;
var anim_length = 6;

var xx = x - x_offset;
var yy = y - y_offset;

	
if		(moveX < 0) {y_frame = 9; pos = "left";}
else if (moveX > 0) {y_frame = 11; pos = "right";}
else if (moveY < 0) {y_frame = 8; pos = "up";}
else if (moveY > 0) {y_frame = 10; pos = "down";}
else x_frame = 0;



if  (x_frame + (anim_speed/60) < anim_length)	{ x_frame += anim_speed/60; }
else											{ x_frame = 1; }

// DRAW CHARACTER SHADOW
if(spr_shadow != -1) draw_sprite(spr_shadow, 0, x, y);
if(spr_base != -1) draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
if(spr_body != -1) draw_sprite_part(spr_body, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
if(spr_legs != -1) draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
if(spr_head != -1) draw_sprite_part(spr_head, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
if(spr_shoulder != -1) draw_sprite_part(spr_shoulder, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
if(spr_feet != -1) draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
if(spr_hand != -1) draw_sprite_part(spr_hand, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);