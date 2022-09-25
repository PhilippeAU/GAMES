/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7B5FB7C9
/// @DnDComment : This checks if the player is currently in knockback,$(13_10)after being hit by an enemy.
/// @DnDArgument : "expr" "in_knockback"
if(in_knockback)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 66D79C8C
	/// @DnDComment : In that case we exit/stop the event here, so$(13_10)the player can't move.
	/// @DnDParent : 7B5FB7C9
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 124B3F31
/// @DnDComment : Set the X velocity to negative move_speed.$(13_10)This makes the character move left.
/// @DnDArgument : "expr" "-move_speed"
/// @DnDArgument : "var" "vel_x"
vel_x = -move_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EB18935
/// @DnDComment : This checks if the current sprite is the fall sprite,$(13_10)meaning the player hasn't landed yet.
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_player_fall"
if(sprite_index == spr_player_fall)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 463B6F01
	/// @DnDComment : In that case we exit/stop the event here, so$(13_10)the sprite doesn't change.
	/// @DnDParent : 7EB18935
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 43A9A72F
/// @DnDComment : This checks if the player is on the ground, before$(13_10)changing the sprite to the walking sprite. This is$(13_10)done to ensure that the walking sprite does not$(13_10)active while the player is in mid-air.
/// @DnDArgument : "expr" "grounded"
if(grounded)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7E25A086
	/// @DnDComment : Change the instance's sprite to the walking$(13_10)player sprite.$(13_10)$(13_10)We're using this instead of 'Set Sprite', as$(13_10)that action also changes the frame number, which$(13_10)we don't want to change.
	/// @DnDParent : 43A9A72F
	/// @DnDArgument : "value" "spr_player_walk"
	/// @DnDArgument : "instvar" "10"
	sprite_index = spr_player_walk;
}