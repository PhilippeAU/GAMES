/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 395AB287
/// @DnDComment : Use 'add' blend mode$(13_10)$(13_10)Same as 'Blend' property$(13_10)in a Particle System
/// @DnDArgument : "function" "gpu_set_blendmode"
/// @DnDArgument : "arg" "bm_add"
gpu_set_blendmode(bm_add);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 7E435025
draw_self();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6150D6F7
/// @DnDComment : Reset blend mode
/// @DnDArgument : "function" "gpu_set_blendmode"
/// @DnDArgument : "arg" "bm_normal"
gpu_set_blendmode(bm_normal);