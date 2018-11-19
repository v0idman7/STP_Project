/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4675153B
/// @DnDArgument : "code" "if not game.pause_ exit;$(13_10)var _x = argument0;$(13_10)var _y = argument1;$(13_10)var _array_size = array_length_1d(global.inventory);$(13_10)$(13_10)for (var _i=0; _i<_array_size; _i++) {$(13_10)	var _box_x = _x+_i*128;$(13_10)	var _box_y = _y;$(13_10)	draw_sprite(spr_inventory_box, 0, _box_x, _box_y);$(13_10)	$(13_10)	var _item = global.inventory[_i];$(13_10)	if instance_exists(_item) {$(13_10)		draw_sprite(_item.sprite_index, 0, _box_x+64, _box_y+64);$(13_10)	}$(13_10)	$(13_10)	if _i == item_index_ {$(13_10)		draw_sprite(spr_pause_cursor, image_index/8, _box_x, _box_y);$(13_10)		if instance_exists(_item) {$(13_10)			draw_text_transformed(_x+16, _y+144, _item.description, 3, 3, 0);$(13_10)			var _description_height = string_height(_item.description)*3;$(13_10)			draw_text_transformed(_x+16, _y+180+_description_height, "Stamina cost: "+string(_item.cost_), 3, 3, 0);$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)draw_sprite(spr_inventory_box, 0, 16, 16);$(13_10)draw_sprite(spr_inventory_box, 0, 144, 16);$(13_10)if instance_exists(global.item[0]) {$(13_10)	draw_sprite(global.item[0].sprite_, 0, 80, 80);$(13_10)}$(13_10)if instance_exists(global.item[1]){$(13_10)	draw_sprite(global.item[1].sprite_, 0, 208, 80);$(13_10)}"
if not game.pause_ exit;
var _x = argument0;
var _y = argument1;
var _array_size = array_length_1d(global.inventory);

for (var _i=0; _i<_array_size; _i++) {
	var _box_x = _x+_i*128;
	var _box_y = _y;
	draw_sprite(spr_inventory_box, 0, _box_x, _box_y);
	
	var _item = global.inventory[_i];
	if instance_exists(_item) {
		draw_sprite(_item.sprite_index, 0, _box_x+64, _box_y+64);
	}
	
	if _i == item_index_ {
		draw_sprite(spr_pause_cursor, image_index/8, _box_x, _box_y);
		if instance_exists(_item) {
			draw_text_transformed(_x+16, _y+144, _item.description, 3, 3, 0);
			var _description_height = string_height(_item.description)*3;
			draw_text_transformed(_x+16, _y+180+_description_height, "Stamina cost: "+string(_item.cost_), 3, 3, 0);
		}
	}
}

draw_sprite(spr_inventory_box, 0, 16, 16);
draw_sprite(spr_inventory_box, 0, 144, 16);
if instance_exists(global.item[0]) {
	draw_sprite(global.item[0].sprite_, 0, 80, 80);
}
if instance_exists(global.item[1]){
	draw_sprite(global.item[1].sprite_, 0, 208, 80);
}