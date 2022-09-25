/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 46AC4127
/// @DnDArgument : "var" "loaded"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "audio_sound_is_playable"
/// @DnDArgument : "arg" "snd_menu_music"
var loaded = audio_sound_is_playable(snd_menu_music);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7431BF46
/// @DnDArgument : "var" "loaded"
/// @DnDArgument : "value" "true"
if(loaded == true)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 68108022
	/// @DnDParent : 7431BF46
	/// @DnDArgument : "soundid" "snd_menu_music"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_menu_music"
	audio_play_sound(snd_menu_music, 0, 1, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 785B9C66
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 43F178ED
	/// @DnDParent : 785B9C66
	alarm_set(0, 30);
}