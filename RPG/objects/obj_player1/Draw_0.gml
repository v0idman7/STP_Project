/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78ED3648
/// @DnDArgument : "code" "var frame_size = 64;$(13_10)var anim_speed = 12;$(13_10)var anim_length = 6;$(13_10)$(13_10)var xx = x - x_offset;$(13_10)var yy = y - y_offset;$(13_10)if (attack1 = 29){$(13_10)	anim_length = 9;$(13_10)	$(13_10)if		(moveX < 0) y_frame = 9;$(13_10)else if (moveX > 0) y_frame = 11;$(13_10)else if (moveY < 0) y_frame = 8;$(13_10)else if (moveY > 0) y_frame = 10;$(13_10)else if (input_fight) && (weapon) && (weapon_ind = 1){$(13_10)	if (y_frame = 8) || (y_frame = 9) || (y_frame = 10) ||(y_frame = 11)$(13_10)	switch(y_frame){$(13_10)		case 9: y_frame = 13; break;$(13_10)		case 11: y_frame = 15; break;$(13_10)		case 8: y_frame = 12; break;$(13_10)		case 10: y_frame = 14; break;$(13_10)}	$(13_10)attack1 = 0}$(13_10)else  x_frame = 0;}$(13_10)$(13_10)$(13_10)if  (x_frame + (anim_speed/60) < anim_length) { x_frame += anim_speed/60; }$(13_10)else							{ x_frame = 1; }$(13_10)$(13_10)draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_body, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_head, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_shoulder, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_hand, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)if (attack1 < 29){$(13_10)	draw_sprite_part(spr_longsword_male, 0, floor(x_frame)*192, (y_frame-12)*192, 192, 192, xx-64, yy-64);$(13_10)}$(13_10)$(13_10)if (weapon) && (attack1 = 29){$(13_10)	switch(y_frame){$(13_10)		case 9: y_fr = 1; break;$(13_10)		case 11: y_fr = 3; break;$(13_10)		case 8: y_fr = 0; break;$(13_10)		case 10: y_fr = 2; break;}$(13_10)	switch(weapon_ind){$(13_10)		case 1:draw_sprite_part(spr_longsword_male, 0, floor(0)*192, y_fr*192, 192, 192, xx-64, yy-64); break;$(13_10)	}$(13_10)}$(13_10)$(13_10)draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);$(13_10)if (attack1 < 29)$(13_10)attack1 += 1;"
var frame_size = 64;
var anim_speed = 12;
var anim_length = 6;

var xx = x - x_offset;
var yy = y - y_offset;
if (attack1 = 29){
	anim_length = 9;
	
if		(moveX < 0) y_frame = 9;
else if (moveX > 0) y_frame = 11;
else if (moveY < 0) y_frame = 8;
else if (moveY > 0) y_frame = 10;
else if (input_fight) && (weapon) && (weapon_ind = 1){
	if (y_frame = 8) || (y_frame = 9) || (y_frame = 10) ||(y_frame = 11)
	switch(y_frame){
		case 9: y_frame = 13; break;
		case 11: y_frame = 15; break;
		case 8: y_frame = 12; break;
		case 10: y_frame = 14; break;
}	
attack1 = 0}
else  x_frame = 0;}


if  (x_frame + (anim_speed/60) < anim_length) { x_frame += anim_speed/60; }
else							{ x_frame = 1; }

draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_body, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_head, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_shoulder, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_hand, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

if (attack1 < 29){
	draw_sprite_part(spr_longsword_male, 0, floor(x_frame)*192, (y_frame-12)*192, 192, 192, xx-64, yy-64);
}

if (weapon) && (attack1 = 29){
	switch(y_frame){
		case 9: y_fr = 1; break;
		case 11: y_fr = 3; break;
		case 8: y_fr = 0; break;
		case 10: y_fr = 2; break;}
	switch(weapon_ind){
		case 1:draw_sprite_part(spr_longsword_male, 0, floor(0)*192, y_fr*192, 192, 192, xx-64, yy-64); break;
	}
}

draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);
if (attack1 < 29)
attack1 += 1;