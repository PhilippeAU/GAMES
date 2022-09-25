/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09975AF7
/// @DnDComment : If we're in the end room
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_end"
if(room == rm_end)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 63A295DA
	/// @DnDComment : Play music track with looping enabled
	/// @DnDParent : 09975AF7
	/// @DnDArgument : "soundid" "snd_music_level"
	/// @DnDArgument : "loop" "1"
	audio_play_sound(snd_music_level, 0, 1, 1.0, undefined, 1.0);
}