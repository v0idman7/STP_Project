/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 227543AA
/// @DnDArgument : "code" "input_left = keyboard_check(vk_left);$(13_10)input_right = keyboard_check(vk_right);$(13_10)input_up = keyboard_check(vk_up);$(13_10)input_down = keyboard_check(vk_down);$(13_10)input_walk = keyboard_check(vk_control);$(13_10)input_run = keyboard_check(vk_shift);$(13_10)input_fight = keyboard_check_pressed(vk_space);$(13_10)$(13_10)depth = -y;$(13_10)$(13_10)if (input_walk or input_run){$(13_10)	spd = abs((input_walk*w_spd) - (input_run*r_spd))$(13_10)}else {$(13_10)	spd = n_spd;$(13_10)}$(13_10)$(13_10)moveX = 0;$(13_10)moveY = 0;$(13_10)$(13_10)moveY = (input_down - input_up) * spd;$(13_10)if(moveY == 0) {moveX = (input_right - input_left) * spd;}$(13_10)$(13_10)if(moveX != 0){$(13_10)	if(place_meeting(x + moveX, y, obj_collision)||place_meeting(x + moveX, y, obj_parent_destructible)){$(13_10)		repeat(abs(moveX)){$(13_10)			if(!place_meeting(x + sign(moveX), y, obj_collision)&&!place_meeting(x + sign(moveX), y, obj_parent_destructible)){x += sign(moveX);}$(13_10)			else{break;}$(13_10)		}$(13_10)		moveX = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(moveY != 0){$(13_10)	if(place_meeting(x, y + moveY, obj_collision)||place_meeting(x, y + moveY, obj_parent_destructible)){$(13_10)		repeat(abs(moveY)){$(13_10)			if(!place_meeting(x, y+sign(moveY), obj_collision)&&!place_meeting(x, y+sign(moveY), obj_parent_destructible)){y += sign(moveY);}$(13_10)			else{break;}$(13_10)		}$(13_10)		moveY = 0;$(13_10)	}$(13_10)}$(13_10)if(attack1 = 29){ //во время удара мечём игрок стоит$(13_10)x += moveX;$(13_10)y += moveY;}$(13_10)$(13_10)if (input_fight)$(13_10)	if (weapon) && (weapon_ind = 1){ //создаём урон от меча$(13_10)		var damageSword = instance_create_depth(x+32, y+48, 0, obj_damage);$(13_10)		damageSword.creator = id;$(13_10)	}$(13_10)$(13_10)if (obj_for_door_open = 0){ //если разрушено нужное кол-во кустов дверь открыта$(13_10)	door = true;}$(13_10)	$(13_10)if (door){ //если дверь открыта слой Tiles_4 делается невидимым$(13_10)layer_set_visible("Tiles_4",false);}"
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
	if(place_meeting(x + moveX, y, obj_collision)||place_meeting(x + moveX, y, obj_parent_destructible)){
		repeat(abs(moveX)){
			if(!place_meeting(x + sign(moveX), y, obj_collision)&&!place_meeting(x + sign(moveX), y, obj_parent_destructible)){x += sign(moveX);}
			else{break;}
		}
		moveX = 0;
	}
}

if(moveY != 0){
	if(place_meeting(x, y + moveY, obj_collision)||place_meeting(x, y + moveY, obj_parent_destructible)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collision)&&!place_meeting(x, y+sign(moveY), obj_parent_destructible)){y += sign(moveY);}
			else{break;}
		}
		moveY = 0;
	}
}
if(attack1 = 29){ //во время удара мечём игрок стоит
x += moveX;
y += moveY;}

if (input_fight)
	if (weapon) && (weapon_ind = 1){ //создаём урон от меча
		var damageSword = instance_create_depth(x+32, y+48, 0, obj_damage);
		damageSword.creator = id;
	}

if (obj_for_door_open = 0){ //если разрушено нужное кол-во кустов дверь открыта
	door = true;}
	
if (door){ //если дверь открыта слой Tiles_4 делается невидимым
layer_set_visible("Tiles_4",false);}