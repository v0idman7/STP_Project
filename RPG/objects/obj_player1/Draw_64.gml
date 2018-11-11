/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F493D44
/// @DnDArgument : "code" "if (showhp){ //рисуем hp$(13_10)	for (var i = 0; i < maxhp; i++)$(13_10)	{$(13_10)		draw_sprite(spr_hp1,1,0 + (i*26),0);$(13_10)	}$(13_10)		for (var i = 0; i < hp; i++)$(13_10)	{$(13_10)		draw_sprite(spr_hp1,0,0 + (i*26),0);$(13_10)	}$(13_10)}$(13_10)$(13_10)"
if (showhp){ //рисуем hp
	for (var i = 0; i < maxhp; i++)
	{
		draw_sprite(spr_hp1,1,0 + (i*26),0);
	}
		for (var i = 0; i < hp; i++)
	{
		draw_sprite(spr_hp1,0,0 + (i*26),0);
	}
}