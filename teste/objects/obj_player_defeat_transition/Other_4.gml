/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 234A0204
/// @DnDComment : This event runs when the new room starts,$(13_10)and it creates the filter just like the$(13_10)Create event$(13_10)
/// @DnDArgument : "var" "transition_layer"
/// @DnDArgument : "function" "layer_create"
/// @DnDArgument : "arg" "-10000"
transition_layer = layer_create(-10000);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 60ED2F0C
/// @DnDArgument : "var" "transition_filter"
/// @DnDArgument : "function" "fx_create"
/// @DnDArgument : "arg" ""_filter_pixelate""
transition_filter = fx_create("_filter_pixelate");

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3AB2141F
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_set_fx"
/// @DnDArgument : "arg" "transition_layer"
/// @DnDArgument : "arg_1" "transition_filter"
layer_set_fx(transition_layer, transition_filter);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1558E4A4
/// @DnDInput : 3
/// @DnDArgument : "function" "fx_set_parameter"
/// @DnDArgument : "arg" "transition_filter"
/// @DnDArgument : "arg_1" ""g_CellSize""
/// @DnDArgument : "arg_2" "cellSize"
fx_set_parameter(transition_filter, "g_CellSize", cellSize);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7EC06F77
/// @DnDComment : Start Alarm 1
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);