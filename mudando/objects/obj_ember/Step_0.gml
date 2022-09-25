/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1A18BBF8
/// @DnDComment : Get an oscillating direction$(13_10)value using the sin() function$(13_10)$(13_10)Uses current_time which$(13_10)stores the time since the$(13_10)game was started
/// @DnDArgument : "var" "osc_direction"
/// @DnDArgument : "function" "sin"
/// @DnDArgument : "arg" "(current_time / 200) * osc_speed"
osc_direction = sin((current_time / 200) * osc_speed);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2028C874
/// @DnDComment : Multiply with oscillation$(13_10)amount
/// @DnDArgument : "expr" "osc_direction * osc_amount"
/// @DnDArgument : "var" "osc_direction"
osc_direction = osc_direction * osc_amount;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 062BCFC1
/// @DnDComment : Apply instance direction$(13_10)by adding together the$(13_10)base direction and osc$(13_10)direction
/// @DnDArgument : "direction" "base_direction + osc_direction"
direction = base_direction + osc_direction;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 634ED03B
/// @DnDComment : Set image angle equal to$(13_10)direction so it looks in$(13_10)that direction
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5A604FF7
/// @DnDComment : Reduce alpha by fade rate
/// @DnDArgument : "alpha" "-fade_rate"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += -fade_rate;