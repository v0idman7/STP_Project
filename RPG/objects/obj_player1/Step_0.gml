/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 227543AA
/// @DnDArgument : "code" "input_left = keyboard_check(vk_left);$(13_10)input_right = keyboard_check(vk_right);$(13_10)input_up = keyboard_check(vk_up);$(13_10)input_down = keyboard_check(vk_down);$(13_10)input_walk = keyboard_check(vk_control);$(13_10)input_run = keyboard_check(vk_shift);$(13_10)$(13_10)if (input_walk or input_run){$(13_10)	spd = abs((input_walk*w_spd) - (input_run*r_spd))$(13_10)}else {$(13_10)	spd = n_spd;$(13_10)}$(13_10)$(13_10)moveX = 0;$(13_10)moveY = 0;$(13_10)$(13_10)moveY = (input_down - input_up) * spd;$(13_10)if(moveY == 0) {moveX = (input_right - input_left) * spd;}$(13_10)$(13_10)//if (COLISION){$(13_10)//moveX = 0;$(13_10)//}$(13_10)$(13_10)x += moveX;$(13_10)y += moveY;"
input_left = keyboard_check(vk_left);
input_right = keyboard_check(vk_right);
input_up = keyboard_check(vk_up);
input_down = keyboard_check(vk_down);
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

if (input_walk or input_run){
	spd = abs((input_walk*w_spd) - (input_run*r_spd))
}else {
	spd = n_spd;
}

moveX = 0;
moveY = 0;

moveY = (input_down - input_up) * spd;
if(moveY == 0) {moveX = (input_right - input_left) * spd;}

//if (COLISION){
//moveX = 0;
//}

x += moveX;
y += moveY;