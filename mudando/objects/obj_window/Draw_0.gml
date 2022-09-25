/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76FF933D
/// @DnDComment : If fire fade alpha is >0$(13_10)Then draw the firey frame$(13_10)at that alpha$(13_10)$(13_10)This is used to fade away$(13_10)the fire frame for the window$(13_10)after the fire is extinguished
/// @DnDArgument : "var" "fire_fade_alpha"
/// @DnDArgument : "op" "2"
if(fire_fade_alpha > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 0B5EE74E
	/// @DnDComment : Current frame is drawn at$(13_10)inverse alpha of the fading$(13_10)frame so their alphas$(13_10)blend together correctly
	/// @DnDParent : 76FF933D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "alpha" "1 - fire_fade_alpha"
	/// @DnDArgument : "sprite" "spr_window"
	/// @DnDArgument : "frame" "image_index"
	/// @DnDSaveInfo : "sprite" "spr_window"
	draw_sprite_ext(spr_window, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1 - fire_fade_alpha);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5BC1CAE1
	/// @DnDParent : 76FF933D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "alpha" "0.4 + fire_fade_alpha"
	/// @DnDArgument : "sprite" "spr_window"
	/// @DnDArgument : "frame" "3"
	/// @DnDSaveInfo : "sprite" "spr_window"
	draw_sprite_ext(spr_window, 3, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 0.4 + fire_fade_alpha);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66679559
	/// @DnDParent : 76FF933D
	/// @DnDArgument : "expr" "-0.2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "fire_fade_alpha"
	fire_fade_alpha += -0.2;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 58741AB2
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 499896DC
	/// @DnDParent : 58741AB2
	draw_self();
}