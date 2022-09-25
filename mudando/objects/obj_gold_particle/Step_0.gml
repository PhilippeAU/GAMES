/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5E472C14
/// @DnDArgument : "alpha" "-fade_rate"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += -fade_rate;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 29D7FD94
/// @DnDArgument : "xscale" "scale * image_alpha"
/// @DnDArgument : "yscale" "scale * image_alpha"
image_xscale = scale * image_alpha;
image_yscale = scale * image_alpha;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 69745506
/// @DnDComment : Add oscillation to direction
/// @DnDArgument : "direction" "sin(current_time / 100) * osc_value"
/// @DnDArgument : "direction_relative" "1"
direction += sin(current_time / 100) * osc_value;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3666E347
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "3"
if(image_alpha <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C4F06FB
	/// @DnDParent : 3666E347
	instance_destroy();
}