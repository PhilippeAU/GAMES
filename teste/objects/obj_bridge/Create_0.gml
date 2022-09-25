/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 37CC6019
/// @DnDComment : Use the "left end" frame by default
/// @DnDArgument : "value" "1"
/// @DnDArgument : "instvar" "11"
image_index = 1;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7940CEDE
/// @DnDComment : If there is a bridge piece on the left,
/// @DnDArgument : "x" "-1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_bridge"
/// @DnDSaveInfo : "object" "obj_bridge"
var l7940CEDE_0 = instance_place(x + -1, y + 0, obj_bridge);
if ((l7940CEDE_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2EB4EDFA
	/// @DnDComment : Use the "right end" frame
	/// @DnDParent : 7940CEDE
	/// @DnDArgument : "value" "2"
	/// @DnDArgument : "instvar" "11"
	image_index = 2;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6AD05339
	/// @DnDComment : If there is also a bridge piece on the right,
	/// @DnDParent : 7940CEDE
	/// @DnDArgument : "x" "1"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_bridge"
	/// @DnDSaveInfo : "object" "obj_bridge"
	var l6AD05339_0 = instance_place(x + 1, y + 0, obj_bridge);
	if ((l6AD05339_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 3FBF92FB
		/// @DnDComment : Use the "middle" frame
		/// @DnDParent : 6AD05339
		/// @DnDArgument : "instvar" "11"
		image_index = 0;
	}
}