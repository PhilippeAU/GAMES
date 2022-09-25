/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 223DBE3E
/// @DnDComment : Select a random sprite$(13_10)from the three civilian$(13_10)sprites
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "spr_civilian_0"
/// @DnDArgument : "option_1" "spr_civilian_1"
/// @DnDArgument : "option_2" "spr_civilian_2"
sprite_index = choose(spr_civilian_0, spr_civilian_1, spr_civilian_2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46204050
/// @DnDComment : Has this civilian been rescued$(13_10)or not?
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "rescued"
rescued = false;