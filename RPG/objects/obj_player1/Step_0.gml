/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 227543AA
/// @DnDArgument : "code" "input_left = keyboard_check(vk_left);$(13_10)input_right = keyboard_check(vk_right);$(13_10)input_up = keyboard_check(vk_up);$(13_10)input_down = keyboard_check(vk_down);$(13_10)input_walk = keyboard_check(vk_control);$(13_10)input_run = keyboard_check(vk_shift);$(13_10)input_fight = keyboard_check_pressed(vk_space);$(13_10)$(13_10)depth = -y;$(13_10)$(13_10)if (input_walk or input_run){$(13_10)	spd = abs((input_walk*w_spd) - (input_run*r_spd))$(13_10)}else {$(13_10)	spd = n_spd;$(13_10)}$(13_10)$(13_10)moveX = 0;$(13_10)moveY = 0;$(13_10)$(13_10)moveY = (input_down - input_up) * spd;$(13_10)if(moveY == 0) {moveX = (input_right - input_left) * spd;}$(13_10)$(13_10)if(moveX != 0){$(13_10)	if(place_meeting(x + moveX, y, obj_collision)||place_meeting(x + moveX, y, obj_parent_destructible)||place_meeting(x + moveX, y, obj_water_collision)){$(13_10)		repeat(abs(moveX)){$(13_10)			if(!place_meeting(x + sign(moveX), y, obj_collision)&&!place_meeting(x + sign(moveX), y, obj_parent_destructible)&&!place_meeting(x + sign(moveX), y, obj_water_collision)){x += sign(moveX);}$(13_10)			else{break;}$(13_10)		}$(13_10)		moveX = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(moveY != 0){$(13_10)	if(place_meeting(x, y + moveY, obj_collision)||place_meeting(x, y + moveY, obj_parent_destructible)||place_meeting(x, y + moveY, obj_water_collision)){$(13_10)		repeat(abs(moveY)){$(13_10)			if(!place_meeting(x, y+sign(moveY), obj_collision)&&!place_meeting(x, y+sign(moveY), obj_parent_destructible)&&!place_meeting(x, y+sign(moveY), obj_water_collision)){y += sign(moveY);}$(13_10)			else{break;}$(13_10)		}$(13_10)		moveY = 0;$(13_10)	}$(13_10)}$(13_10)if(attack1 = 29 && attack2 = 64){ //во время атаки игрок стоит на месте$(13_10)x += moveX;$(13_10)y += moveY;}$(13_10)$(13_10)if (input_fight){$(13_10)	if (weapon_sword) && (weapon_ind = 1){ //создаём урон от меча$(13_10)		var damageSword = instance_create_depth(x+32, y+48, 0, obj_sword_damage);$(13_10)		damageSword.creator = id;$(13_10)	}$(13_10)	if (weapon_bow) && (weapon_ind = 2){ //создаём стрелу$(13_10)		alarm[0] = 40$(13_10)	}}$(13_10)$(13_10)if (obj_for_door_open = 0){ //если разрушено нужное кол-во кустов дверь открыта$(13_10)	door = true;}$(13_10)	$(13_10)if (door){ //если дверь открыта слой Tiles_4 делается невидимым$(13_10)layer_set_visible("Tiles_4",false);}$(13_10)$(13_10)if (global.item[0] == obj_sword_item.id) //если выбран меч в инвентаре$(13_10)or (global.item[1] == obj_sword_item.id)$(13_10)weapon_sword = true;$(13_10)else weapon_sword = false;$(13_10)$(13_10)if (global.item[0] == obj_bow_item.id) //если выбран лук в инвентаре$(13_10)or (global.item[1] == obj_bow_item.id)$(13_10)weapon_bow = true;$(13_10)else weapon_bow = false;$(13_10)	"
input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);
input_fight = keyboard_check_pressed(vk_space);

depth = -y;

if (input_walk or input_run){
	spd = abs((input_walk*w_spd) - (input_run*r_spd))
}else {
	spd = n_spd;
}

moveX = 0;
moveY = 0;

moveY = (input_down - input_up) * spd;
if(moveY == 0) {moveX = (input_right - input_left) * spd;}

if(moveX != 0){
	if(place_meeting(x + moveX, y, obj_collision)||place_meeting(x + moveX, y, obj_parent_destructible)||place_meeting(x + moveX, y, obj_water_collision)){
		repeat(abs(moveX)){
			if(!place_meeting(x + sign(moveX), y, obj_collision)&&!place_meeting(x + sign(moveX), y, obj_parent_destructible)&&!place_meeting(x + sign(moveX), y, obj_water_collision)){x += sign(moveX);}
			else{break;}
		}
		moveX = 0;
	}
}

if(moveY != 0){
	if(place_meeting(x, y + moveY, obj_collision)||place_meeting(x, y + moveY, obj_parent_destructible)||place_meeting(x, y + moveY, obj_water_collision)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collision)&&!place_meeting(x, y+sign(moveY), obj_parent_destructible)&&!place_meeting(x, y+sign(moveY), obj_water_collision)){y += sign(moveY);}
			else{break;}
		}
		moveY = 0;
	}
}
if(attack1 = 29 && attack2 = 64){ //во время атаки игрок стоит на месте
x += moveX;
y += moveY;}

if (input_fight){
	if (weapon_sword) && (weapon_ind = 1){ //создаём урон от меча
		var damageSword = instance_create_depth(x+32, y+48, 0, obj_sword_damage);
		damageSword.creator = id;
	}
	if (weapon_bow) && (weapon_ind = 2){ //создаём стрелу
		alarm[0] = 40
	}}

if (obj_for_door_open = 0){ //если разрушено нужное кол-во кустов дверь открыта
	door = true;}
	
if (door){ //если дверь открыта слой Tiles_4 делается невидимым
layer_set_visible("Tiles_4",false);}

if (global.item[0] == obj_sword_item.id) //если выбран меч в инвентаре
or (global.item[1] == obj_sword_item.id)
weapon_sword = true;
else weapon_sword = false;

if (global.item[0] == obj_bow_item.id) //если выбран лук в инвентаре
or (global.item[1] == obj_bow_item.id)
weapon_bow = true;
else weapon_bow = false;