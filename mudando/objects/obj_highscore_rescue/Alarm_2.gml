/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 36D1C27F
/// @DnDArgument : "xscale" "-0.04"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "-0.04"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += -0.04;
image_yscale += -0.04;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1CE0BB59
/// @DnDArgument : "spriteind" "sprite_index"
sprite_index = sprite_index;
image_index = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06DC12C1
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(image_xscale <= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 47DE6321
	/// @DnDParent : 06DC12C1
	image_xscale = 1;
	image_yscale = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 792E1D02
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 65C37741
	/// @DnDParent : 792E1D02
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 1);
}