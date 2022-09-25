/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 18930410
/// @DnDComment : By default, each time you run the game,$(13_10)random functions return the same results.$(13_10)This is done for easier testing, but$(13_10)when you actually build an executable$(13_10)of your game, seeds are randomized so $(13_10)each play is unique.$(13_10)$(13_10)We use this Randomize action to randomize$(13_10)the seed even when we're just testing the$(13_10)game so we can get unique experiences.
randomize();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4B2A344A
/// @DnDComment : Initialize global highscore variables$(13_10)$(13_10)char is the ID of the character that is$(13_10)selected (0 or 1)
/// @DnDInput : 3
/// @DnDArgument : "var" "highscore_rescue"
/// @DnDArgument : "var_1" "highscore_height"
/// @DnDArgument : "var_2" "char"
global.highscore_rescue = 0;
global.highscore_height = 0;
global.char = 0;