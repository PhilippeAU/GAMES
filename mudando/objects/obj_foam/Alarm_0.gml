/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3264E4DF
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 37CFFF26
/// @DnDArgument : "times" "4"
repeat(4)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3701CE59
	/// @DnDParent : 37CFFF26
	/// @DnDArgument : "xpos" "irandom_range(-30, 30)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-160"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_foam_particle"
	/// @DnDArgument : "layer" "layer"
	/// @DnDSaveInfo : "objectid" "obj_foam_particle"
	instance_create_layer(x + irandom_range(-30, 30), y + -160, layer, obj_foam_particle);
}