/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2031EABD
event_inherited();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4585D9DC
/// @DnDComment : Set the position of the default audio listener$(13_10)to the player's position, for positional audio$(13_10)with audio emitters (such as in obj_end_gate)
/// @DnDInput : 4
/// @DnDArgument : "function" "audio_listener_set_position"
/// @DnDArgument : "arg" "0"
/// @DnDArgument : "arg_1" "x"
/// @DnDArgument : "arg_2" "y"
/// @DnDArgument : "arg_3" "0"
audio_listener_set_position(0, x, y, 0);