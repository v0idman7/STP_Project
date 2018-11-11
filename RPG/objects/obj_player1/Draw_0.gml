/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78ED3648
/// @DnDArgument : "code" "var frame_size = 64;$(13_10)var anim_speed = 12;$(13_10)var anim_length = 6;$(13_10)$(13_10)var xx = x - x_offset;$(13_10)var yy = y - y_offset;$(13_10)if (attack1 = 29){$(13_10)	anim_length = 9;$(13_10)	$(13_10)if		(moveX < 0) {y_frame = 9; pos = "left";}$(13_10)else if (moveX > 0) {y_frame = 11; pos = "right";}$(13_10)else if (moveY < 0) {y_frame = 8; pos = "up";}$(13_10)else if (moveY > 0) {y_frame = 10; pos = "down";}$(13_10)else x_frame = 0;$(13_10)if (input_fight) && (weapon) && (weapon_ind = 1){$(13_10)	switch(pos){$(13_10)		case "left": y_frame = 13; break;$(13_10)		case "right": y_frame = 15; break;$(13_10)		case "up": y_frame = 12; break;$(13_10)		case "down": y_frame = 14; break;$(13_10)}	$(13_10)attack1 = 0}}$(13_10)$(13_10)$(13_10)if  (x_frame + (anim_speed/60) < anim_length) { x_frame += anim_speed/60; }$(13_10)else							{ x_frame = 1; }$(13_10)$(13_10)draw_sprite(spr_shadow, 0, x + 32, y + 61);$(13_10)draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_body, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_head, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_shoulder, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_hand, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)if (attack1 < 29){$(13_10)	draw_sprite_part(spr_longsword_male, 0, floor(x_frame)*192, (y_frame-12)*192, 192, 192, xx-64, yy-64);$(13_10)}$(13_10)$(13_10)if (weapon) && (attack1 = 29){$(13_10)	switch(pos){$(13_10)		case "left": y_frame = 1; break;$(13_10)		case "right": y_frame = 3; break;$(13_10)		case "up": y_frame = 0; break;$(13_10)		case "down": y_frame = 2; break;}$(13_10)	switch(weapon_ind){$(13_10)		case 1:draw_sprite_part(spr_longsword_male, 0, floor(0)*192, y_frame*192, 192, 192, xx-64, yy-64); break;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)if (attack1 < 29){$(13_10)attack1 += 1;}"
var frame_size = 64;
var anim_speed = 12;
var anim_length = 6;

var xx = x - x_offset;
var yy = y - y_offset;
if (attack1 = 29){
	anim_length = 9;
	
if		(moveX < 0) {y_frame = 9; pos = "left";}
else if (moveX > 0) {y_frame = 11; pos = "right";}
else if (moveY < 0) {y_frame = 8; pos = "up";}
else if (moveY > 0) {y_frame = 10; pos = "down";}
else x_frame = 0;
if (input_fight) && (weapon) && (weapon_ind = 1){
	switch(pos){
		case "left": y_frame = 13; break;
		case "right": y_frame = 15; break;
		case "up": y_frame = 12; break;
		case "down": y_frame = 14; break;
}	
attack1 = 0}}


if  (x_frame + (anim_speed/60) < anim_length) { x_frame += anim_speed/60; }
else							{ x_frame = 1; }

draw_sprite(spr_shadow, 0, x + 32, y + 61);
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
	switch(pos){
		case "left": y_frame = 1; break;
		case "right": y_frame = 3; break;
		case "up": y_frame = 0; break;
		case "down": y_frame = 2; break;}
	switch(weapon_ind){
		case 1:draw_sprite_part(spr_longsword_male, 0, floor(0)*192, y_frame*192, 192, 192, xx-64, yy-64); break;
	}
}


if (attack1 < 29){
attack1 += 1;}