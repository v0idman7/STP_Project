/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3FC69AFB
/// @DnDArgument : "code" "// COLLISIONS$(13_10)// HORIZONTAL$(13_10)if(moveX != 0) {$(13_10)	if(place_meeting(x + moveX, y, obj_collision)||place_meeting(x + moveX, y, obj_parent_destructible)){$(13_10)		repeat(abs(moveX)){$(13_10)			if(!place_meeting(x + sign(moveX), y, obj_collision)&&!place_meeting(x + sign(moveX), y, obj_parent_destructible)){x += sign(moveX);}$(13_10)			else{break;}$(13_10)		}$(13_10)		moveX = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)// VERTICAL$(13_10)if(moveY != 0){$(13_10)	if(place_meeting(x, y + moveY, obj_collision)||place_meeting(x, y + moveY, obj_parent_destructible)){$(13_10)		repeat(abs(moveY)){$(13_10)			if(!place_meeting(x, y+sign(moveY), obj_collision)&&!place_meeting(x, y+sign(moveY), obj_parent_destructible)){y += sign(moveY);}$(13_10)			else{break;}$(13_10)		}$(13_10)		moveY = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)// APPLY MOVEMENT$(13_10)x += moveX;$(13_10)y += moveY;$(13_10)"
// COLLISIONS
// HORIZONTAL
if(moveX != 0) {
	if(place_meeting(x + moveX, y, obj_collision)||place_meeting(x + moveX, y, obj_parent_destructible)){
		repeat(abs(moveX)){
			if(!place_meeting(x + sign(moveX), y, obj_collision)&&!place_meeting(x + sign(moveX), y, obj_parent_destructible)){x += sign(moveX);}
			else{break;}
		}
		moveX = 0;
	}
}

// VERTICAL
if(moveY != 0){
	if(place_meeting(x, y + moveY, obj_collision)||place_meeting(x, y + moveY, obj_parent_destructible)){
		repeat(abs(moveY)){
			if(!place_meeting(x, y+sign(moveY), obj_collision)&&!place_meeting(x, y+sign(moveY), obj_parent_destructible)){y += sign(moveY);}
			else{break;}
		}
		moveY = 0;
	}
}

// APPLY MOVEMENT
x += moveX;
y += moveY;