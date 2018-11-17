/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5AD786C4
/// @DnDArgument : "code" "if (anim_hit = 0){$(13_10)	if (y_frame = 1) yy -= 20;$(13_10)	if (y_frame = 2) xx -= 4;$(13_10)	if (y_frame = 3) yy += 4;$(13_10)}$(13_10)$(13_10)if(anim_hit < 21){$(13_10)	if  (x_frame + (36/60) < 13) { x_frame += 36/60; }$(13_10)else							{ x_frame = 1; }$(13_10)$(13_10)draw_sprite_part(spr_arrow_hit, 0, floor(x_frame)*32, y_frame*32, 32, 32, xx, yy);$(13_10)anim_hit += 1;$(13_10)}$(13_10)else { draw_sprite_part(spr_arrow_hit, 0, floor(0)*32, y_frame*32, 32, 32, xx, yy);}"
if (anim_hit = 0){
	if (y_frame = 1) yy -= 20;
	if (y_frame = 2) xx -= 4;
	if (y_frame = 3) yy += 4;
}

if(anim_hit < 21){
	if  (x_frame + (36/60) < 13) { x_frame += 36/60; }
else							{ x_frame = 1; }

draw_sprite_part(spr_arrow_hit, 0, floor(x_frame)*32, y_frame*32, 32, 32, xx, yy);
anim_hit += 1;
}
else { draw_sprite_part(spr_arrow_hit, 0, floor(0)*32, y_frame*32, 32, 32, xx, yy);}