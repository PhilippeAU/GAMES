/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 16E899DE
/// @DnDComment : With this function call, we are checking if there is a collision$(13_10)1 pixel below the character. This means the character is standing$(13_10)on ground.$(13_10)$(13_10)We're doing this in the Begin Step event, so the events that run$(13_10)later (Step and End Step) know whether the player is on ground$(13_10)or not.$(13_10)$(13_10)The result of the function (true or false) is stored in the $(13_10)'grounded' variable, which was initialised in the Create event.
/// @DnDInput : 2
/// @DnDArgument : "var" "grounded"
/// @DnDArgument : "function" "check_collision"
/// @DnDArgument : "arg" "0"
/// @DnDArgument : "arg_1" "1"
grounded = check_collision(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38C2ACB5
/// @DnDComment : This checks if 'grounded' is true. This means the character is$(13_10)standing on ground.
/// @DnDArgument : "var" "grounded"
/// @DnDArgument : "value" "true"
if(grounded == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19D05C17
	/// @DnDComment : This stores the character's current position in$(13_10)the 'grounded_x' and 'grounded_y' variables.$(13_10)$(13_10)Since these variables are only changed when the$(13_10)character is on ground, they only store the position$(13_10)for when the character was last on ground. These values$(13_10)can then be used to restore the player's position after$(13_10)it falls off a platform into a pit.
	/// @DnDInput : 2
	/// @DnDParent : 38C2ACB5
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "y"
	/// @DnDArgument : "var" "grounded_x"
	/// @DnDArgument : "var_1" "grounded_y"
	grounded_x = x;
	grounded_y = y;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B58C03B
/// @DnDComment : In this part we are applying friction to$(13_10)the player's velocity, so it eventually$(13_10)comes to a stop when there is no input.$(13_10)$(13_10)This action rounds the X velocity to the$(13_10)nearest integer. Then it checks if that$(13_10)integer is NOT 0. This means there is an$(13_10)active velocity of (or more than) 0.5 pixels$(13_10)in either direction.
/// @DnDArgument : "var" "round(vel_x)"
/// @DnDArgument : "not" "1"
if(!(round(vel_x) == 0))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 692450D3
	/// @DnDComment : Here we calculate the friction that should$(13_10)be applied this frame. It is calculated by$(13_10)multiplying the sign of the X velocity (which$(13_10)will be -1 or 1) with the friction power.$(13_10)$(13_10)The result is stored in a temporary variable.
	/// @DnDParent : 7B58C03B
	/// @DnDArgument : "var" "friction_applied"
	/// @DnDArgument : "value" "sign(vel_x) * friction_power"
	var friction_applied = sign(vel_x) * friction_power;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 12B8F1E7
	/// @DnDComment : This checks if the character is NOT grounded,$(13_10)meaning it's in mid-air. In that case we want$(13_10)to reduce the friction that is applied (so in $(13_10)mid-air the player takes more time to slow down).
	/// @DnDParent : 7B58C03B
	/// @DnDArgument : "expr" "grounded"
	/// @DnDArgument : "not" "1"
	if(!(grounded))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6774FC95
		/// @DnDComment : This divides the applied friction by 4.
		/// @DnDParent : 12B8F1E7
		/// @DnDArgument : "expr" "friction_applied / 4"
		/// @DnDArgument : "var" "friction_applied"
		friction_applied = friction_applied / 4;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70B6104B
	/// @DnDComment : The friction value is then subtracted from the X velocity.
	/// @DnDParent : 7B58C03B
	/// @DnDArgument : "expr" "-friction_applied"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vel_x"
	vel_x += -friction_applied;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5E25ED42
/// @DnDComment : This 'Else' block runs when there is no X velocity, or it's less than 0.5 pixels in either direction.
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73E0756B
	/// @DnDComment : In that case we reset the X velocity to 0 so the character comes to a complete stop.
	/// @DnDParent : 5E25ED42
	/// @DnDArgument : "var" "vel_x"
	vel_x = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2B53D9E3
/// @DnDComment : This adds the grav_speed value to the vel_y variable.$(13_10)Doing so applies gravity to the character's vertical$(13_10)velocity, pulling it down each frame to make it fall.
/// @DnDArgument : "expr" "grav_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "vel_y"
vel_y += grav_speed;