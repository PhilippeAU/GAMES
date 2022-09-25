/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1F2BC85F
/// @DnDComment : This event changes the blend mode to Add,$(13_10)draws the instance, and resets the blend mode$(13_10)
/// @DnDArgument : "function" "gpu_set_blendmode"
/// @DnDArgument : "arg" "bm_add"
gpu_set_blendmode(bm_add);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 791CF6E0
draw_self();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0DF0886C
/// @DnDArgument : "function" "gpu_set_blendmode"
/// @DnDArgument : "arg" "bm_normal"
gpu_set_blendmode(bm_normal);