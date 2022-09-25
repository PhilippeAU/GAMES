/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 69B585FA
/// @DnDComment : Use the multiply$(13_10)blend mode so color$(13_10)values are multiplied$(13_10)with the background,$(13_10)making it look darker$(13_10)and also so it blends$(13_10)better
/// @DnDInput : 2
/// @DnDArgument : "function" "gpu_set_blendmode_ext"
/// @DnDArgument : "arg" "bm_dest_color"
/// @DnDArgument : "arg_1" "bm_zero"
gpu_set_blendmode_ext(bm_dest_color, bm_zero);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 32EF26EE
/// @DnDComment : Draw the gradient sprite$(13_10)$(13_10)Set its x scale to room width$(13_10)so it covers the whole room$(13_10)(since the original width$(13_10)of the sprite is 1 pixel)$(13_10)$(13_10)Since we're using the multiply$(13_10)blend mode, this gradient will$(13_10)blend with the background$(13_10)instead of overlapping it
/// @DnDArgument : "y" "room_height"
/// @DnDArgument : "xscale" "room_width"
/// @DnDArgument : "sprite" "spr_gradient"
/// @DnDSaveInfo : "sprite" "spr_gradient"
draw_sprite_ext(spr_gradient, 0, 0, room_height, room_width, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2A5B9F5E
/// @DnDComment : Reset blend mode to$(13_10)normal
/// @DnDArgument : "function" "gpu_set_blendmode"
/// @DnDArgument : "arg" "bm_normal"
gpu_set_blendmode(bm_normal);