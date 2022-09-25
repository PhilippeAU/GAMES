/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0A0D7869
/// @DnDComment : Draw the button$(13_10)itself
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7A3EF4C6
/// @DnDComment : Change the font
/// @DnDArgument : "font" "ft_button"
/// @DnDSaveInfo : "font" "ft_button"
draw_set_font(ft_button);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 106097BA
/// @DnDComment : Change the color to the$(13_10)text color set in the Create$(13_10)event
/// @DnDArgument : "color" "text_color"
/// @DnDArgument : "alpha" "false"
draw_set_colour(text_color & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 7230E39E
/// @DnDComment : Change the text alignment$(13_10)to center-middle as we need$(13_10)to draw text in the center of$(13_10)the button
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 7385814A
/// @DnDComment : Set the draw alpha to image_alpha,$(13_10)so the text uses the same opacity$(13_10)as the button instance itself$(13_10)(which is controlled by the menu Sequence).
/// @DnDArgument : "alpha" "image_alpha"
draw_set_alpha(image_alpha);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7E88772C
/// @DnDComment : Draw the text at the centre$(13_10)of the button$(13_10)$(13_10)This uses the scale of the instance$(13_10)to scale the text, so the text appears$(13_10)at the same scale as the button itself$(13_10)
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-4"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "image_xscale"
/// @DnDArgument : "yscale" "image_yscale"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + -4, "" + string(text), image_xscale, image_yscale, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 24CA4FA0
/// @DnDComment : Reset the alpha to its default$(13_10)value (which is 1)
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 296C0193
/// @DnDComment : Reset the text alignment to$(13_10)left-top (which is the default$(13_10)alignment)
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 60AE561C
/// @DnDComment : Reset the color to white
draw_set_colour($FFFFFFFF & $ffffff);
var l60AE561C_0=($FFFFFFFF >> 24);
draw_set_alpha(l60AE561C_0 / $ff);