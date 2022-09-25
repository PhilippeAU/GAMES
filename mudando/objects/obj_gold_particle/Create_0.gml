/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 2409D894
/// @DnDInput : 2
/// @DnDArgument : "value" "random_range(3, 5)"
/// @DnDArgument : "value_1" "irandom_range(0, 360)"
/// @DnDArgument : "instvar" "3"
/// @DnDArgument : "instvar_1" "2"
speed = random_range(3, 5);
direction = irandom_range(0, 360);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23EDE2C3
/// @DnDArgument : "expr" "1.5"
/// @DnDArgument : "var" "scale"
scale = 1.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 296B4C36
/// @DnDInput : 2
/// @DnDArgument : "expr" "0.02"
/// @DnDArgument : "expr_1" "random_range(-6, 6)"
/// @DnDArgument : "var" "fade_rate"
/// @DnDArgument : "var_1" "osc_value"
fade_rate = 0.02;
osc_value = random_range(-6, 6);