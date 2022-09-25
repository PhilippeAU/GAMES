/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21FD39BE
/// @DnDComment : Increase the cell size by 1$(13_10)This event runs when the first room is ending,$(13_10)so the pixelation is increased$(13_10)
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cellSize"
cellSize += 1;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 77E1EA94
/// @DnDComment : Apply the new cell size to the filter
/// @DnDInput : 3
/// @DnDArgument : "function" "fx_set_parameter"
/// @DnDArgument : "arg" "transition_filter"
/// @DnDArgument : "arg_1" ""g_CellSize""
/// @DnDArgument : "arg_2" "cellSize"
fx_set_parameter(transition_filter, "g_CellSize", cellSize);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 20A858DC
/// @DnDComment : Run Alarm 0 again in the next frame
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);