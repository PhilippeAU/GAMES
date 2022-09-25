/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4802944D
/// @DnDComment : This is the target position of the block on$(13_10)the Y axis. The block always moves to this$(13_10)position when it's not already there, so this$(13_10)is used to animate the block on the Y axis,$(13_10)when the player hits it.
/// @DnDArgument : "expr" "y"
/// @DnDArgument : "var" "target_y"
target_y = y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7EBB51F7
/// @DnDComment : This fake Y value animates to the target_y$(13_10)value and is used to draw the block. We're $(13_10)using a fake Y so the actual hitbox of the$(13_10)block doesn't change.
/// @DnDArgument : "expr" "y"
/// @DnDArgument : "var" "fake_y"
fake_y = y;