/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A07505D
/// @DnDComment : Only move if there is gravity force$(13_10)Gravity force is stopped temporarily$(13_10)in obj_window collision event
/// @DnDArgument : "var" "gravity"
/// @DnDArgument : "op" "2"
if(gravity > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 743D36ED
	/// @DnDComment : Move target X left
	/// @DnDParent : 6A07505D
	/// @DnDArgument : "expr" "-move_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "target_x"
	target_x += -move_speed;
}