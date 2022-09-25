/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6F3128EE
/// @DnDComment : If the player is in a cave, fade out all$(13_10)overworld ambience (trees and wind), and$(13_10)fade in all cave ambience, over a period$(13_10)of 2 seconds
/// @DnDArgument : "expr" "in_cave"
if(in_cave)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 195E3CDB
	/// @DnDInput : 3
	/// @DnDParent : 6F3128EE
	/// @DnDArgument : "function" "audio_sound_gain"
	/// @DnDArgument : "arg" "snd_amb_trees"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "2000"
	audio_sound_gain(snd_amb_trees, 0, 2000);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 18DD23BE
	/// @DnDInput : 3
	/// @DnDParent : 6F3128EE
	/// @DnDArgument : "function" "audio_sound_gain"
	/// @DnDArgument : "arg" "snd_amb_wind"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "2000"
	audio_sound_gain(snd_amb_wind, 0, 2000);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5EA82E1A
	/// @DnDInput : 3
	/// @DnDParent : 6F3128EE
	/// @DnDArgument : "function" "audio_sound_gain"
	/// @DnDArgument : "arg" "snd_amb_cave_01"
	/// @DnDArgument : "arg_1" "vol_cave_1"
	/// @DnDArgument : "arg_2" "2000"
	audio_sound_gain(snd_amb_cave_01, vol_cave_1, 2000);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 687B1D67
	/// @DnDInput : 3
	/// @DnDParent : 6F3128EE
	/// @DnDArgument : "function" "audio_sound_gain"
	/// @DnDArgument : "arg" "snd_amb_cave_02"
	/// @DnDArgument : "arg_1" "vol_cave_2"
	/// @DnDArgument : "arg_2" "2000"
	audio_sound_gain(snd_amb_cave_02, vol_cave_2, 2000);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1BC09C0B
/// @DnDComment : If the player is not in a cave, fade out all$(13_10)cave ambience, and fade in overworld ambience$(13_10)(trees and wind)
else
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3C19280B
	/// @DnDInput : 3
	/// @DnDParent : 1BC09C0B
	/// @DnDArgument : "function" "audio_sound_gain"
	/// @DnDArgument : "arg" "snd_amb_cave_01"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "2000"
	audio_sound_gain(snd_amb_cave_01, 0, 2000);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 047F02C2
	/// @DnDInput : 3
	/// @DnDParent : 1BC09C0B
	/// @DnDArgument : "function" "audio_sound_gain"
	/// @DnDArgument : "arg" "snd_amb_cave_02"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "2000"
	audio_sound_gain(snd_amb_cave_02, 0, 2000);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3180EDFB
	/// @DnDInput : 3
	/// @DnDParent : 1BC09C0B
	/// @DnDArgument : "function" "audio_sound_gain"
	/// @DnDArgument : "arg" "snd_amb_trees"
	/// @DnDArgument : "arg_1" "vol_trees"
	/// @DnDArgument : "arg_2" "2000"
	audio_sound_gain(snd_amb_trees, vol_trees, 2000);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 783B67AC
	/// @DnDInput : 3
	/// @DnDParent : 1BC09C0B
	/// @DnDArgument : "function" "audio_sound_gain"
	/// @DnDArgument : "arg" "snd_amb_wind"
	/// @DnDArgument : "arg_1" "vol_wind"
	/// @DnDArgument : "arg_2" "2000"
	audio_sound_gain(snd_amb_wind, vol_wind, 2000);
}