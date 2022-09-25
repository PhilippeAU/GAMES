/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2456B651
/// @DnDComment : This runs the parent's Step event.
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C186C75
/// @DnDComment : This checks if the current X position is not$(13_10)equal to the end gate's X position, meaning the$(13_10)player is not standing in the center of the gate.$(13_10)$(13_10)In that case we want to move it there before fading$(13_10)it.
/// @DnDArgument : "var" "x"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "obj_end_gate.x"
if(!(x == obj_end_gate.x))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67699469
	/// @DnDComment : This sets the X velocity so the player$(13_10)moves to the center of the gate.$(13_10)$(13_10)The velocity is calculated by getting the relative$(13_10)X value from the player to the end gate, then getting$(13_10)its sign (1 or -1) and multiplying that by 4 (which$(13_10)becomes the speed).
	/// @DnDParent : 3C186C75
	/// @DnDArgument : "expr" "sign(obj_end_gate.x - x) * 4"
	/// @DnDArgument : "var" "vel_x"
	vel_x = sign(obj_end_gate.x - x) * 4;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4A8525C9
	/// @DnDComment : This changes the sprite of the instance to the walking$(13_10)sprite, as the player is currently walking to the$(13_10)center of the gate.
	/// @DnDParent : 3C186C75
	/// @DnDArgument : "value" "spr_player_walk"
	/// @DnDArgument : "instvar" "10"
	sprite_index = spr_player_walk;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 68C8AD27
	/// @DnDComment : This reduces the animation speed slightly as the player$(13_10)is supposed to be walking slower than usual.
	/// @DnDParent : 3C186C75
	/// @DnDArgument : "speed" "0.7"
	image_speed = 0.7;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 377049A8
	/// @DnDComment : This checks if the absolute difference between the player$(13_10)and the gate (on the X axis) is less than 5, meaning the$(13_10)player has (almost) reached the center of the gate.
	/// @DnDParent : 3C186C75
	/// @DnDArgument : "var" "abs(obj_end_gate.x - x)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(abs(obj_end_gate.x - x) < 5)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 6559AEE0
		/// @DnDComment : In that case we set the player's X position$(13_10)to the gate's X position so it jumps there.
		/// @DnDParent : 377049A8
		/// @DnDArgument : "value" "obj_end_gate.x"
		x = obj_end_gate.x;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 334A6CEA
		/// @DnDComment : Then we reset the X velocity to 0 so the player$(13_10)stops.
		/// @DnDParent : 377049A8
		/// @DnDArgument : "var" "vel_x"
		vel_x = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4F8EA452
/// @DnDComment : This else part runs when the player is standing at the center of the gate, meaning it can fade now.
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1230A18B
	/// @DnDComment : This changes the sprite to the idle sprite as the player is now standing.
	/// @DnDParent : 4F8EA452
	/// @DnDArgument : "value" "spr_player_idle"
	/// @DnDArgument : "instvar" "10"
	sprite_index = spr_player_idle;

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 0A69FD52
	/// @DnDComment : This reduces the alpha of the instance, making it fade away.
	/// @DnDParent : 4F8EA452
	/// @DnDArgument : "alpha" "-0.02"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += -0.02;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1BDF7D53
	/// @DnDComment : This sets the animation speed back to normal (as it $(13_10)was changed during the walking state).
	/// @DnDParent : 4F8EA452
	image_speed = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DE29083
	/// @DnDComment : This checks if the alpha is at or below 0,$(13_10)meaning the instance is invisible now.
	/// @DnDParent : 4F8EA452
	/// @DnDArgument : "var" "image_alpha"
	/// @DnDArgument : "op" "3"
	if(image_alpha <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 76BE5ABF
		/// @DnDComment : In that case we move to the next room.
		/// @DnDParent : 6DE29083
		room_goto_next();
	}
}