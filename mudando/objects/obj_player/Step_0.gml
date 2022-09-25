/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 370F3EEE
/// @DnDComment : This event handles moving everything down$(13_10)so it looks like the player is moving up.$(13_10)Please refer to Part 1 of the tutorial$(13_10)for detailed information.$(13_10)$(13_10)If the player is in the upper half of the room
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height / 2"
if(y < room_height / 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D16946E
	/// @DnDComment : And if the player is going upwards
	/// @DnDParent : 370F3EEE
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 094281BA
		/// @DnDComment : Flip its vspeed to create a downward speed
		/// @DnDParent : 6D16946E
		/// @DnDArgument : "var" "downspeed"
		/// @DnDArgument : "value" "-vspeed"
		var downspeed = -vspeed;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 461FFF15
		/// @DnDComment : Apply to all children of obj_move_parent
		/// @DnDApplyTo : {obj_move_parent}
		/// @DnDParent : 6D16946E
		/// @DnDArgument : "value" "downspeed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		with(obj_move_parent) {
		y += downspeed;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 673772E1
		/// @DnDComment : Stick the player to the center of the screen, vertically
		/// @DnDParent : 6D16946E
		/// @DnDArgument : "value" "room_height / 2"
		/// @DnDArgument : "instvar" "1"
		y = room_height / 2;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5F33597D
		/// @DnDComment : Get the Background layer's Y position
		/// @DnDParent : 6D16946E
		/// @DnDArgument : "var" "back_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "layer_get_y"
		/// @DnDArgument : "arg" ""Background""
		var back_y = layer_get_y("Background");
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 263CDC9C
		/// @DnDComment : Move the background along with the other instances
		/// @DnDInput : 2
		/// @DnDParent : 6D16946E
		/// @DnDArgument : "function" "layer_y"
		/// @DnDArgument : "arg" ""Background""
		/// @DnDArgument : "arg_1" "back_y + downspeed"
		layer_y("Background", back_y + downspeed);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 4F29B3AF
		/// @DnDComment : Add to the height score
		/// @DnDParent : 6D16946E
		/// @DnDArgument : "value" "downspeed / 100"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "score_height"
		global.score_height += downspeed / 100;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 52501BD9
/// @DnDComment : Apply touch input on X axis
/// @DnDArgument : "expr" "min(abs(touch_input_x), move_speed * 1.2) * sign(touch_input_x)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "target_x"
target_x += min(abs(touch_input_x), move_speed * 1.2) * sign(touch_input_x);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 450340CE
/// @DnDComment : Smoothly interpolate touch input$(13_10)down to 0
/// @DnDArgument : "expr" "lerp(touch_input_x, 0, 0.2)"
/// @DnDArgument : "var" "touch_input_x"
touch_input_x = lerp(touch_input_x, 0, 0.2);