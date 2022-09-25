/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E90C12B
/// @DnDComment : If not moving, keep Y at -50$(13_10)$(13_10)This is to prevent it from $(13_10)moving down the view when it's$(13_10)inactive
/// @DnDArgument : "var" "speed"
if(speed == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 39C9D682
	/// @DnDParent : 7E90C12B
	/// @DnDArgument : "value" "-50"
	/// @DnDArgument : "instvar" "1"
	y = -50;
}