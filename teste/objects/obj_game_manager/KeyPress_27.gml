/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1291B3B8
/// @DnDComment : This checks if the game is NOT paused,$(13_10)in which case we want to pause it.
/// @DnDArgument : "expr" "paused"
/// @DnDArgument : "not" "1"
if(!(paused))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6AAB7271
	/// @DnDComment : Deactivate all instances$(13_10)except the current instance$(13_10)(which is the game manager).$(13_10)$(13_10)This pauses all other instances,$(13_10)so they don't do anything, and $(13_10)are not even drawn.
	/// @DnDParent : 1291B3B8
	/// @DnDArgument : "function" "instance_deactivate_all"
	/// @DnDArgument : "arg" "true"
	instance_deactivate_all(true);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0D00D939
	/// @DnDComment : Activate the gamepad input$(13_10)object, so the player can$(13_10)resume the game with their$(13_10)gamepad
	/// @DnDParent : 1291B3B8
	/// @DnDArgument : "function" "instance_activate_object"
	/// @DnDArgument : "arg" "obj_gamepad_input"
	instance_activate_object(obj_gamepad_input);

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 7829CC84
	/// @DnDComment : Create the pause menu$(13_10)Sequence and store its$(13_10)ID in a variable so it can$(13_10)be destroyed later
	/// @DnDParent : 1291B3B8
	/// @DnDArgument : "var" "pause_sequence"
	/// @DnDArgument : "sequenceid" "seq_pause_menu"
	/// @DnDArgument : "layer" ""Instances""
	/// @DnDSaveInfo : "sequenceid" "seq_pause_menu"
	pause_sequence = layer_sequence_create("Instances", 0, 0, seq_pause_menu);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53C37FE9
	/// @DnDComment : Set 'paused' to true
	/// @DnDParent : 1291B3B8
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "paused"
	paused = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 44BC3ACD
/// @DnDComment : Otherwise, if the game is already paused,
else
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 58481FD5
	/// @DnDComment : Activate all instances, to$(13_10)resume their functionalities
	/// @DnDParent : 44BC3ACD
	/// @DnDArgument : "function" "instance_activate_all"
	instance_activate_all();

	/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
	/// @DnDVersion : 1
	/// @DnDHash : 2A3ABB20
	/// @DnDComment : Destroy the pause menu$(13_10)Sequence, so the pause menu$(13_10)disappears
	/// @DnDParent : 44BC3ACD
	/// @DnDArgument : "var" "pause_sequence"
	layer_sequence_destroy(pause_sequence);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A0191B8
	/// @DnDComment : Set 'paused' to false, as the$(13_10)game is now unpaused
	/// @DnDParent : 44BC3ACD
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "paused"
	paused = false;
}