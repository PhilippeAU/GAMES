/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 25925581
/// @DnDComment : Draw the instance itself.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 12EFED31
/// @DnDComment : This section draws the text stored in the 'text' variable,$(13_10)initialised in the Variable Definitions window.$(13_10)$(13_10)This changes the font to ft_hud.$(13_10)
/// @DnDArgument : "font" "ft_hud"
/// @DnDSaveInfo : "font" "ft_hud"
draw_set_font(ft_hud);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 108A11FF
/// @DnDComment : This changes the alignment to center-middle.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0ED16B56
/// @DnDComment : This changes the colour for the text drawn in the next action.
/// @DnDArgument : "color" "$FF1F529B"
draw_set_colour($FF1F529B & $ffffff);
var l0ED16B56_0=($FF1F529B >> 24);
draw_set_alpha(l0ED16B56_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 10150B10
/// @DnDComment : This draws the text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "text"
draw_text(x + 0, y + 0,  + string(text));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 64BF1E78
/// @DnDComment : This resets the colour to white.
draw_set_colour($FFFFFFFF & $ffffff);
var l64BF1E78_0=($FFFFFFFF >> 24);
draw_set_alpha(l64BF1E78_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5A2BEF09
/// @DnDComment : This resets the alignments to their default values.
draw_set_halign(fa_left);
draw_set_valign(fa_top);