/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BFA8F00
/// @DnDComment : Set the Y target to 32 pixels above the$(13_10)block's starting position, so it moves there
/// @DnDArgument : "expr" "ystart - 32"
/// @DnDArgument : "var" "target_y"
target_y = ystart - 32;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 60E6E17A
/// @DnDComment : Set Alarm 0 to run after 4 frames, which$(13_10)will reset the Y target, causing the block$(13_10)to move back
/// @DnDArgument : "steps" "4"
alarm_set(0, 4);