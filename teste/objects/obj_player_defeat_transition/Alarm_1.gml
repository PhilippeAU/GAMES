/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0976D6AE
/// @DnDComment : Reduce the cell size by 2$(13_10)This event runs when the second room has started,$(13_10)so the pixelation is decreased$(13_10)
/// @DnDArgument : "expr" "-2"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cellSize"
cellSize += -2;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7DDC4026
/// @DnDComment : Apply the new cell size to the filter
/// @DnDInput : 3
/// @DnDArgument : "function" "fx_set_parameter"
/// @DnDArgument : "arg" "transition_filter"
/// @DnDArgument : "arg_1" ""g_CellSize""
/// @DnDArgument : "arg_2" "cellSize"
fx_set_parameter(transition_filter, "g_CellSize", cellSize);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23CE88D3
/// @DnDComment : If the cell size is at or below 2,
/// @DnDArgument : "var" "cellSize"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "2"
if(cellSize <= 2)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2188913D
	/// @DnDComment : Destroy this instance
	/// @DnDParent : 23CE88D3
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 73CD71A9
	/// @DnDComment : Destroy the filter layer
	/// @DnDParent : 23CE88D3
	/// @DnDArgument : "function" "layer_destroy"
	/// @DnDArgument : "arg" "transition_layer"
	layer_destroy(transition_layer);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 445F23FC
/// @DnDComment : Otherwise,
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6637DD01
	/// @DnDComment : Run Alarm 1 again in the next frame
	/// @DnDParent : 445F23FC
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 1);
}