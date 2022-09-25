/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 53DF53AB
/// @DnDComment : Reduce alpha
/// @DnDArgument : "alpha" "-0.12"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += -0.12;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74D95E47
/// @DnDComment : If the alpha is >0
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "2"
if(image_alpha > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4BE449C7
	/// @DnDComment : Run alarm again$(13_10)in next step
	/// @DnDParent : 74D95E47
	/// @DnDArgument : "steps" "1"
	alarm_set(0, 1);
}