/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 550E852D
/// @DnDComment : This runs the parent's End Step event.$(13_10)$(13_10)The rest of the event is concerned with making$(13_10)the enemy turn, either when it hits a wall, or$(13_10)finds a ledge.
event_inherited();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6A2335CF
/// @DnDComment : This action calls the check_collision function,$(13_10)and looks for a wall collision where the enemy$(13_10)is walking.$(13_10)$(13_10)We multiply the vel_x by 4 to look for a wall,$(13_10)so we're looking ahead 4 times by the amount$(13_10)the enemy will move this frame.$(13_10)$(13_10)The result (true or false) is stored in a temporary$(13_10)variable.
/// @DnDInput : 2
/// @DnDArgument : "var" "wall_found"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "check_collision"
/// @DnDArgument : "arg" "vel_x * 4"
/// @DnDArgument : "arg_1" "0"
var wall_found = check_collision(vel_x * 4, 0);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 01EB9440
/// @DnDComment : This checks if a wall was found.
/// @DnDArgument : "expr" "wall_found"
if(wall_found)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61C2A65B
	/// @DnDComment : This flips the sign of the X velocity, so if$(13_10)it's positive it becomes negative, and vice versa.$(13_10)$(13_10)This means the enemy turns to the other direction$(13_10)(from left to right, and vice versa).
	/// @DnDParent : 01EB9440
	/// @DnDArgument : "expr" "-vel_x"
	/// @DnDArgument : "var" "vel_x"
	vel_x = -vel_x;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1D807562
/// @DnDComment : Here we are looking for a ledge, by checking for$(13_10)a collision 32 times ahead where the enemy is $(13_10)moving.$(13_10)$(13_10)However this time the Y offset is set to 64, so$(13_10)it's looking for a collision 64 pixels below where$(13_10)the enemy would be.$(13_10)$(13_10)If a collision is not found there, it means that$(13_10)position has no ground for the enemy to walk on,$(13_10)so we've hit a ledge.$(13_10)$(13_10)The result of this function is stored in 'ground_ahead'.
/// @DnDInput : 2
/// @DnDArgument : "var" "ground_ahead"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "check_collision"
/// @DnDArgument : "arg" "vel_x * 32"
/// @DnDArgument : "arg_1" "64"
var ground_ahead = check_collision(vel_x * 32, 64);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 263FBFC7
/// @DnDComment : This checks if a collision was NOT found there,$(13_10)meaning we've hit a ledge.
/// @DnDArgument : "expr" "ground_ahead"
/// @DnDArgument : "not" "1"
if(!(ground_ahead))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7C508293
	/// @DnDComment : This ensures the enemy is grounded, so$(13_10)enemies in mid-air do not turn.$(13_10)
	/// @DnDParent : 263FBFC7
	/// @DnDArgument : "expr" "grounded"
	if(grounded)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DAFD162
		/// @DnDComment : This makes the enemy turn.
		/// @DnDParent : 7C508293
		/// @DnDArgument : "expr" "-vel_x"
		/// @DnDArgument : "var" "vel_x"
		vel_x = -vel_x;
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4215A62D
/// @DnDComment : This checks if there is another enemy where$(13_10)this enemy is moving. This is used to make$(13_10)the enemy turn if it runs into another enemy,$(13_10)so they don't pass through each other.$(13_10)
/// @DnDArgument : "x" "vel_x * 16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_enemy_parent"
/// @DnDSaveInfo : "object" "obj_enemy_parent"
var l4215A62D_0 = instance_place(x + vel_x * 16, y + 0, obj_enemy_parent);
if ((l4215A62D_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 115B703C
	/// @DnDComment : In that case the enemy turns.
	/// @DnDParent : 4215A62D
	/// @DnDArgument : "expr" "-vel_x"
	/// @DnDArgument : "var" "vel_x"
	vel_x = -vel_x;
}