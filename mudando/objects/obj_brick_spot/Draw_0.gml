/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1F69006C
/// @DnDComment : Use the multiply$(13_10)blend mode so color$(13_10)values are multiplied$(13_10)with the background,$(13_10)making it look darker$(13_10)and also so it blends$(13_10)better
/// @DnDInput : 2
/// @DnDArgument : "function" "gpu_set_blendmode_ext"
/// @DnDArgument : "arg" "bm_dest_color"
/// @DnDArgument : "arg_1" "bm_zero"
gpu_set_blendmode_ext(bm_dest_color, bm_zero);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 19FC2BC8
draw_self();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5AFCAED8
/// @DnDComment : Reset blend mode to$(13_10)normal
/// @DnDArgument : "function" "gpu_set_blendmode"
/// @DnDArgument : "arg" "bm_normal"
gpu_set_blendmode(bm_normal);