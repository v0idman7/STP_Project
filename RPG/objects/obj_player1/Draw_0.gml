/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 78ED3648
/// @DnDArgument : "code" "frame_size = 64;$(13_10)anim_speed = 12;$(13_10)switch(weapon_ind){$(13_10)	case 1: anim_length = 6; break;$(13_10)	case 2: anim_length = 13; break;$(13_10)	default: anim_length = 9; break;}$(13_10)$(13_10)xx = x - x_offset;$(13_10)yy = y - y_offset;$(13_10)if (attack1 = 29 && attack2 = 64){ //если не выполняется аттака$(13_10)	anim_length = 9;$(13_10)	$(13_10)if		(moveX < 0) {y_frame = 9; pos = "left";}$(13_10)else if (moveX > 0) {y_frame = 11; pos = "right";}$(13_10)else if (moveY < 0) {y_frame = 8; pos = "up";}$(13_10)else if (moveY > 0) {y_frame = 10; pos = "down";}$(13_10)else x_frame = 0;$(13_10)if (input_fight) && (weapon) && (weapon_ind = 1){ //если выполняем удар мечём$(13_10)	switch(pos){ //от текущеё позиции выбираем какую анимацию выполнить$(13_10)		case "left": y_frame = 13; break;$(13_10)		case "right": y_frame = 15; break;$(13_10)		case "up": y_frame = 12; break;$(13_10)		case "down": y_frame = 14; break;$(13_10)}	$(13_10)attack1 = 0}$(13_10)if (input_fight) && (weapon) && (weapon_ind = 2){ //если используем лук$(13_10)	switch(pos){ //от текущеё позиции выбираем какую анимацию выполнить$(13_10)		case "left": y_frame = 17; break;$(13_10)		case "right": y_frame = 19; break;$(13_10)		case "up": y_frame = 16; break;$(13_10)		case "down": y_frame = 18; break;$(13_10)}	$(13_10)attack2 = 0}}//выбираем первый кадр выстрела стрелой$(13_10)$(13_10)$(13_10)if  (x_frame + (anim_speed/60) < anim_length) { x_frame += anim_speed/60; }$(13_10)else							{ x_frame = 1; }$(13_10)$(13_10)if (weapon && weapon_ind = 2)$(13_10)draw_sprite_part(spr_quiver, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite(spr_shadow, 0, x + 32, y + 61);$(13_10)draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_body, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_head, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_shoulder, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)draw_sprite_part(spr_hand, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)if (attack1 < 29 || attack2 < 64){ //отрисовка анимации удара$(13_10)	switch(weapon_ind){$(13_10)	case 1: draw_sprite_part(spr_longsword_male, 0, floor(x_frame)*192, (y_frame-12)*192, 192, 192, xx-64, yy-64); break;$(13_10)	case 2: draw_sprite_part(spr_bow, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)			draw_sprite_part(spr_arrow, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); break;$(13_10)}}$(13_10)$(13_10)if (weapon && attack1 = 29 && attack2 = 64){ //отрисовка оружия при ходьбе$(13_10)	switch(pos){$(13_10)		case "left": if (weapon_ind == 1) y_fr = 1; else  y_fr = 17; break;$(13_10)		case "right": if (weapon_ind == 1) y_fr = 3; else  y_fr = 19; break;$(13_10)		case "up": if (weapon_ind == 1) y_fr = 0; else  y_fr = 16; break;$(13_10)		case "down": if (weapon_ind == 1) y_fr = 2; else  y_fr = 18; break;}$(13_10)	switch(weapon_ind){$(13_10)		case 1: draw_sprite_part(spr_longsword_male, 0, floor(0)*192, y_fr*192, 192, 192, xx-64, yy-64); break;$(13_10)		case 2: draw_sprite_part(spr_bow, 0, floor(0)*frame_size, y_fr*frame_size, frame_size, frame_size, xx, yy);$(13_10)				draw_sprite_part(spr_arrow, 0, floor(0)*frame_size, y_fr*frame_size, frame_size, frame_size, xx, yy); break;$(13_10)	}$(13_10)}$(13_10)if (attack1 < 29){ //если выполняеться удар мечём$(13_10)attack1 += 1;} //переключаем на следующий кадр удара$(13_10)$(13_10)if (attack2 < 64){ //если используется лук$(13_10)attack2 += 1;} //переключаем на следующий кадр удара"
frame_size = 64;
anim_speed = 12;
switch(weapon_ind){
	case 1: anim_length = 6; break;
	case 2: anim_length = 13; break;
	default: anim_length = 9; break;}

xx = x - x_offset;
yy = y - y_offset;
if (attack1 = 29 && attack2 = 64){ //если не выполняется аттака
	anim_length = 9;
	
if		(moveX < 0) {y_frame = 9; pos = "left";}
else if (moveX > 0) {y_frame = 11; pos = "right";}
else if (moveY < 0) {y_frame = 8; pos = "up";}
else if (moveY > 0) {y_frame = 10; pos = "down";}
else x_frame = 0;
if (input_fight) && (weapon) && (weapon_ind = 1){ //если выполняем удар мечём
	switch(pos){ //от текущеё позиции выбираем какую анимацию выполнить
		case "left": y_frame = 13; break;
		case "right": y_frame = 15; break;
		case "up": y_frame = 12; break;
		case "down": y_frame = 14; break;
}	
attack1 = 0}
if (input_fight) && (weapon) && (weapon_ind = 2){ //если используем лук
	switch(pos){ //от текущеё позиции выбираем какую анимацию выполнить
		case "left": y_frame = 17; break;
		case "right": y_frame = 19; break;
		case "up": y_frame = 16; break;
		case "down": y_frame = 18; break;
}	
attack2 = 0}}//выбираем первый кадр выстрела стрелой


if  (x_frame + (anim_speed/60) < anim_length) { x_frame += anim_speed/60; }
else							{ x_frame = 1; }

if (weapon && weapon_ind = 2)
draw_sprite_part(spr_quiver, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite(spr_shadow, 0, x + 32, y + 61);
draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_body, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_head, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_shoulder, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
draw_sprite_part(spr_hand, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

if (attack1 < 29 || attack2 < 64){ //отрисовка анимации удара
	switch(weapon_ind){
	case 1: draw_sprite_part(spr_longsword_male, 0, floor(x_frame)*192, (y_frame-12)*192, 192, 192, xx-64, yy-64); break;
	case 2: draw_sprite_part(spr_bow, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
			draw_sprite_part(spr_arrow, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy); break;
}}

if (weapon && attack1 = 29 && attack2 = 64){ //отрисовка оружия при ходьбе
	switch(pos){
		case "left": if (weapon_ind == 1) y_fr = 1; else  y_fr = 17; break;
		case "right": if (weapon_ind == 1) y_fr = 3; else  y_fr = 19; break;
		case "up": if (weapon_ind == 1) y_fr = 0; else  y_fr = 16; break;
		case "down": if (weapon_ind == 1) y_fr = 2; else  y_fr = 18; break;}
	switch(weapon_ind){
		case 1: draw_sprite_part(spr_longsword_male, 0, floor(0)*192, y_fr*192, 192, 192, xx-64, yy-64); break;
		case 2: draw_sprite_part(spr_bow, 0, floor(0)*frame_size, y_fr*frame_size, frame_size, frame_size, xx, yy);
				draw_sprite_part(spr_arrow, 0, floor(0)*frame_size, y_fr*frame_size, frame_size, frame_size, xx, yy); break;
	}
}
if (attack1 < 29){ //если выполняеться удар мечём
attack1 += 1;} //переключаем на следующий кадр удара

if (attack2 < 64){ //если используется лук
attack2 += 1;} //переключаем на следующий кадр удара