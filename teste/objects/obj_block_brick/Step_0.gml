/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2FDF746F
/// @DnDComment : This runs the parent's Step event.$(13_10)$(13_10)The rest of the event handles changing the sprite$(13_10)of the block depending on the blocks surrounding it.$(13_10)It can be a "single" block, a "left" block in a row$(13_10)of blocks, a "right" block, or a "middle" block.$(13_10)
event_inherited();

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 40E24891
/// @DnDComment : This temporary variable stores the frame that should$(13_10)be applied to the block by the end of the event.$(13_10)$(13_10)Here it is set to the current frame (image_index).$(13_10)
/// @DnDArgument : "var" "frame"
/// @DnDArgument : "value" "image_index"
var frame = image_index;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 36861B8E
/// @DnDComment : This checks if there is another brick block to$(13_10)the left of the current block.$(13_10)
/// @DnDArgument : "x" "-1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_block_brick"
/// @DnDSaveInfo : "object" "obj_block_brick"
var l36861B8E_0 = instance_place(x + -1, y + 0, obj_block_brick);
if ((l36861B8E_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4095E5D0
	/// @DnDComment : In that case the current block uses the$(13_10)"right" block frame.$(13_10)
	/// @DnDParent : 36861B8E
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "frame"
	frame = 3;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5B312684
	/// @DnDComment : However if there is also a block to the$(13_10)right of the block,$(13_10)
	/// @DnDParent : 36861B8E
	/// @DnDArgument : "x" "1"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block_brick"
	/// @DnDSaveInfo : "object" "obj_block_brick"
	var l5B312684_0 = instance_place(x + 1, y + 0, obj_block_brick);
	if ((l5B312684_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7293F492
		/// @DnDComment : Then we use the "middle" block$(13_10)frame$(13_10)
		/// @DnDParent : 5B312684
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "frame"
		frame = 2;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6D43CB9A
/// @DnDComment : This runs if there is no block to the left
else
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2A20F057
	/// @DnDComment : If there is only a block to the right,
	/// @DnDParent : 6D43CB9A
	/// @DnDArgument : "x" "1"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block_brick"
	/// @DnDSaveInfo : "object" "obj_block_brick"
	var l2A20F057_0 = instance_place(x + 1, y + 0, obj_block_brick);
	if ((l2A20F057_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A56C2BD
		/// @DnDComment : Then we use the "left" block frame
		/// @DnDParent : 2A20F057
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "frame"
		frame = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7ED2567A
	/// @DnDComment : This runs if no surrounding blocks were found
	/// @DnDParent : 6D43CB9A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05400A9C
		/// @DnDComment : Then we just use the "single"$(13_10)block frame$(13_10)
		/// @DnDParent : 7ED2567A
		/// @DnDArgument : "var" "frame"
		frame = 0;
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 700D6D39
/// @DnDComment : This applies the new frame value to$(13_10)the image index of the block.$(13_10)
/// @DnDArgument : "value" "frame"
/// @DnDArgument : "instvar" "11"
image_index = frame;