/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56C1DDF1
/// @DnDComment : When this instance is below the room,$(13_10)create the game over sequence$(13_10)so the player can choose to$(13_10)replay or go back to menu.$(13_10)$(13_10)Also destroy this instance to make$(13_10)sure this code doesn't run again.
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height + 50"
if(y > room_height + 50)
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 6EF319B2
	/// @DnDParent : 56C1DDF1
	/// @DnDArgument : "var" ""
	/// @DnDArgument : "sequenceid" "seq_game_over"
	/// @DnDArgument : "layer" ""HUD""
	/// @DnDSaveInfo : "sequenceid" "seq_game_over"
	layer_sequence_create("HUD", 0, 0, seq_game_over);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0521EE28
	/// @DnDParent : 56C1DDF1
	instance_destroy();
}