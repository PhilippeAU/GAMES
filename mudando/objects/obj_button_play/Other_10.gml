/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2D262DFC
event_inherited();

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 33C60EC3
/// @DnDComment : When this button is clicked$(13_10)The transition "start"$(13_10)sequence is played$(13_10)which starts the transition.$(13_10)$(13_10)Alarm 0 is set to run after$(13_10)20 frames which switches the$(13_10)room to the game room.$(13_10)$(13_10)The 20 frames are to wait$(13_10)for the transition "start"$(13_10)animation to finish.$(13_10)$(13_10)When the game room starts,$(13_10)the transition "end" animation$(13_10)will play, which is the second$(13_10)half of the whole transition.
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_transition_start"
/// @DnDArgument : "layer" ""Transition""
/// @DnDSaveInfo : "sequenceid" "seq_transition_start"
layer_sequence_create("Transition", 0, 0, seq_transition_start);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 59A7868E
/// @DnDArgument : "steps" "20"
alarm_set(0, 20);