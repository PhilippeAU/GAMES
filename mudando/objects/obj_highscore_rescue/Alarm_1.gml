/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 69E339D3
/// @DnDArgument : "xscale" "0.04"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.04"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += 0.04;
image_yscale += 0.04;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2EE95FDC
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "sprite_index"
sprite_index = sprite_index;
image_index = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DED39D4
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1.2"
if(image_xscale >= 1.2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 42268132
	/// @DnDParent : 3DED39D4
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2D0677CD
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4A1A44E6
	/// @DnDParent : 2D0677CD
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 1);
}