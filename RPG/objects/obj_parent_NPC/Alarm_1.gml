/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4EDC259C
/// @DnDArgument : "code" "moveX = 0;$(13_10)moveY = 0;$(13_10)$(13_10)var idle = choose(0,1);$(13_10)if(idle == false){$(13_10)	var dir = choose(1,2,3,4);$(13_10)	switch(dir){$(13_10)		case 1: moveX = -spd; break;$(13_10)		case 2: moveX = spd; break;$(13_10)		case 3: moveY = -spd; break;$(13_10)		case 4: moveY = spd; break;		$(13_10)	}	$(13_10)}$(13_10)$(13_10)alarm[1] = random_range(2.5, 4) * room_speed;"
moveX = 0;
moveY = 0;

var idle = choose(0,1);
if(idle == false){
	var dir = choose(1,2,3,4);
	switch(dir){
		case 1: moveX = -spd; break;
		case 2: moveX = spd; break;
		case 3: moveY = -spd; break;
		case 4: moveY = spd; break;		
	}	
}

alarm[1] = random_range(2.5, 4) * room_speed;