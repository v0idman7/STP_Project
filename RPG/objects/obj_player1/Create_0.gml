/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D6B2052
/// @DnDArgument : "code" "w_spd = 1;$(13_10)n_spd = 2;$(13_10)r_spd = 3;$(13_10)$(13_10)x_frame = 1;$(13_10)y_frame = 8;$(13_10)$(13_10)x_offset = sprite_get_xoffset(mask_index);$(13_10)y_offset = sprite_get_yoffset(mask_index);$(13_10)$(13_10)spr_base = spr_base_male;$(13_10)spr_body = spr_bodyarmor_gold_male;$(13_10)spr_feet = spr_feetarmor_gold_male;$(13_10)spr_hand = spr_handarmor_gold_male;$(13_10)spr_head = spr_headarmor_gold_male;$(13_10)spr_legs = spr_legsarmor_gold_male;$(13_10)spr_shoulder = spr_shoulderarmor_gold_male;$(13_10)spr_shadow = spr_character_shadow;$(13_10)$(13_10)showhp = true; //показывать кол-во hp$(13_10)maxhp = 10; //максимальное кол-во hp$(13_10)hp = 10; //текущее кол-во hp$(13_10)$(13_10)weapon = true; //есть ли оружие$(13_10)weapon_ind = 1; //тип оружия$(13_10)attack1 = 29; //кол-во кадров необходимое для удара мечом$(13_10)pos = "up"; // начальная позиция игрока$(13_10)$(13_10)door = false; //сначала двери закрыты$(13_10)obj_for_door_open = 5; //кол-во кустов для открытия двери$(13_10)$(13_10)alpha = 1;"
w_spd = 1;
n_spd = 2;
r_spd = 3;

x_frame = 1;
y_frame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

spr_base = spr_base_male;
spr_body = spr_bodyarmor_gold_male;
spr_feet = spr_feetarmor_gold_male;
spr_hand = spr_handarmor_gold_male;
spr_head = spr_headarmor_gold_male;
spr_legs = spr_legsarmor_gold_male;
spr_shoulder = spr_shoulderarmor_gold_male;
spr_shadow = spr_character_shadow;

showhp = true; //показывать кол-во hp
maxhp = 10; //максимальное кол-во hp
hp = 10; //текущее кол-во hp

weapon = true; //есть ли оружие
weapon_ind = 1; //тип оружия
attack1 = 29; //кол-во кадров необходимое для удара мечом
pos = "up"; // начальная позиция игрока

door = false; //сначала двери закрыты
obj_for_door_open = 5; //кол-во кустов для открытия двери

alpha = 1;