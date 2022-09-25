/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 400FADAC
/// @DnDComment : Draw instance itself$(13_10)$(13_10)Change font and alignment$(13_10)then draw height highscore$(13_10)$(13_10)Then reset alignment
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 69CFE96F
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "fnt_score"
draw_set_font(fnt_score);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 68179866
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 35ED4EBB
/// @DnDComment : round() is used because$(13_10)the height highscore$(13_10)is a decimal value, but we$(13_10)need to display an integer,$(13_10)which is why we round it
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Best Height ""
/// @DnDArgument : "var" "round(global.highscore_height)"
draw_text(x + 0, y + 0, string("Best Height ") + string(round(global.highscore_height)));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1DBFA5AC
draw_set_halign(fa_left);
draw_set_valign(fa_top);