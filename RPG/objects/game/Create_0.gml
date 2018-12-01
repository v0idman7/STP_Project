/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4697DB19
/// @DnDArgument : "code" "randomize();$(13_10)room_goto_next();$(13_10)$(13_10)debug = false;$(13_10)$(13_10)pause_ = false;$(13_10)pause_sprite_ = noone;$(13_10)$(13_10)global.item[0] = noone; //используемые предметы$(13_10)global.item[1] = noone;$(13_10)item_index_ = 0;$(13_10)$(13_10)inventory_create(6); //количество предметов в инвентаре$(13_10)inventory_add_item(obj_sword_item); //добавление предмета в инвентарь$(13_10)inventory_add_item(obj_bow_item);$(13_10)$(13_10)global.game_width = 2048;$(13_10)global.game_height = 1536;$(13_10)$(13_10)display_set_gui_size(global.game_width, global.game_height);"
randomize();
room_goto_next();

debug = false;

pause_ = false;
pause_sprite_ = noone;

global.item[0] = noone; //используемые предметы
global.item[1] = noone;
item_index_ = 0;

inventory_create(6); //количество предметов в инвентаре
inventory_add_item(obj_sword_item); //добавление предмета в инвентарь
inventory_add_item(obj_bow_item);

global.game_width = 2048;
global.game_height = 1536;

display_set_gui_size(global.game_width, global.game_height);