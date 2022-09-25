/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4D270A70
/// @DnDComment : Before drawing the end gate itself, we want$(13_10)to draw its inside, using the Add blend mode$(13_10)so it appears bright.$(13_10)$(13_10)We're calling the gpu_set_blendmode function$(13_10)to change the blend mode to Add.
/// @DnDArgument : "function" "gpu_set_blendmode"
/// @DnDArgument : "arg" "bm_add"
gpu_set_blendmode(bm_add);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 09F69960
/// @DnDComment : This draws the inside part of the end gate,$(13_10)at the position of the gate itself (using the$(13_10)Relative options).
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_end_gate_glow"
/// @DnDSaveInfo : "sprite" "spr_end_gate_glow"
draw_sprite(spr_end_gate_glow, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 231F9138
/// @DnDComment : This resets the blend mode to Normal, which is$(13_10)necessary to do once you are done using your$(13_10)changed blend mode.
/// @DnDArgument : "function" "gpu_set_blendmode"
/// @DnDArgument : "arg" "bm_normal"
gpu_set_blendmode(bm_normal);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 29D4924B
/// @DnDComment : This draws the end gate instance itself.
draw_self();