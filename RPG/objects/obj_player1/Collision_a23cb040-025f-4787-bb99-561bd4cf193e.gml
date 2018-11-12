/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 223DC6AD
/// @DnDArgument : "code" "if (door){$(13_10)if (room_exists(other.newRoom)){$(13_10)	alpha -= 0.02;$(13_10)	draw_set_alpha(alpha);$(13_10)	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, c_black);$(13_10)	camera_set_view_size(view_camera[0],$(13_10)	lerp(camera_get_view_width(view_camera[0]),64,0.1),$(13_10)	lerp(camera_get_view_height(view_camera[0]),48,0.1));$(13_10)	$(13_10)	if (camera_get_view_width(view_camera[0]) <= 65){$(13_10)	room_goto(other.newRoom);$(13_10)	x = other.newX;$(13_10)	y = other.newY;$(13_10)	alpha = 1;$(13_10)	draw_set_alpha(alpha);$(13_10)	}}$(13_10)else{$(13_10)	x = other.newX;$(13_10)	y = other.newY;}}$(13_10)$(13_10)	$(13_10)"
if (door){
if (room_exists(other.newRoom)){
	alpha -= 0.02;
	draw_set_alpha(alpha);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, c_black);
	camera_set_view_size(view_camera[0],
	lerp(camera_get_view_width(view_camera[0]),64,0.1),
	lerp(camera_get_view_height(view_camera[0]),48,0.1));
	
	if (camera_get_view_width(view_camera[0]) <= 65){
	room_goto(other.newRoom);
	x = other.newX;
	y = other.newY;
	alpha = 1;
	draw_set_alpha(alpha);
	}}
else{
	x = other.newX;
	y = other.newY;}}