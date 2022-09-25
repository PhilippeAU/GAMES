/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 394907B2
/// @DnDComment : Create a layer for the pixelate filter
/// @DnDArgument : "var" "transition_layer"
/// @DnDArgument : "function" "layer_create"
/// @DnDArgument : "arg" "-10000"
transition_layer = layer_create(-10000);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 121AC252
/// @DnDComment : Create the pixelate filter itself
/// @DnDArgument : "var" "transition_filter"
/// @DnDArgument : "function" "fx_create"
/// @DnDArgument : "arg" ""_filter_pixelate""
transition_filter = fx_create("_filter_pixelate");

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 36C04590
/// @DnDComment : Assign the filter to the layer
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_set_fx"
/// @DnDArgument : "arg" "transition_layer"
/// @DnDArgument : "arg_1" "transition_filter"
layer_set_fx(transition_layer, transition_filter);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 009DC4D7
/// @DnDComment : Initialize the cell size used for the pixelate filter
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "cellSize"
cellSize = 1;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 12AD4E91
/// @DnDComment : Assign the cell size to the filter
/// @DnDInput : 3
/// @DnDArgument : "function" "fx_set_parameter"
/// @DnDArgument : "arg" "transition_filter"
/// @DnDArgument : "arg_1" ""g_CellSize""
/// @DnDArgument : "arg_2" "cellSize"
fx_set_parameter(transition_filter, "g_CellSize", cellSize);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0021B57F
/// @DnDComment : Start Alarm 0
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);