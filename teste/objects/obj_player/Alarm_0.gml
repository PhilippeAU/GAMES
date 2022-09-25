/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 245AD7D8
/// @DnDComment : This event runs some time after the player is hit$(13_10)by an enemy, so the player's knockback can be stopped.$(13_10)$(13_10)This action sets the 'in_knockback' variable to false,$(13_10)so the player knows it's not in knockback anymore, and$(13_10)it can move again.
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "in_knockback"
in_knockback = false;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3A7F8708
/// @DnDComment : This changes the sprite back to the idle one, as the$(13_10)knockback would have been using the hurt sprite.
/// @DnDArgument : "spriteind" "spr_player_idle"
sprite_index = spr_player_idle;
image_index = 0;