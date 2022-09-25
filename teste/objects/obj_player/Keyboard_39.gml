/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 15F1E8DE
/// @DnDComment : This checks if the player is currently in knockback,$(13_10)after being hit by an enemy.
/// @DnDArgument : "expr" "in_knockback"
if(in_knockback)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6B016845
	/// @DnDComment : In that case we exit/stop the event here, so$(13_10)the player can't move.
	/// @DnDParent : 15F1E8DE
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C36A1F7
/// @DnDComment : Set the X velocity to move_speed.$(13_10)This makes the character move right.
/// @DnDArgument : "expr" "move_speed"
/// @DnDArgument : "var" "vel_x"
vel_x = move_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 05380A2F
/// @DnDComment : This checks if the current sprite is the fall sprite,$(13_10)meaning the player hasn't landed yet.
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_player_fall"
if(sprite_index == spr_player_fall)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 07852F12
	/// @DnDComment : In that case we exit/stop the event here, so$(13_10)the sprite doesn't change.
	/// @DnDParent : 05380A2F
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 430872D3
/// @DnDComment : This checks if the player is on the ground, before$(13_10)changing the sprite to the walking sprite. This is$(13_10)done to ensure that the walking sprite does not$(13_10)active while the player is in mid-air.
/// @DnDArgument : "expr" "grounded"
if(grounded)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 00DFAA05
	/// @DnDComment : Change the instance's sprite to the walking$(13_10)player sprite.$(13_10)$(13_10)We're using this instead of 'Set Sprite', as$(13_10)that action also changes the frame number, which$(13_10)we don't want to change.
	/// @DnDParent : 430872D3
	/// @DnDArgument : "value" "spr_player_walk"
	/// @DnDArgument : "instvar" "10"
	sprite_index = spr_player_walk;
}