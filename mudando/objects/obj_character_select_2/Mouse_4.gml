/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 529D971B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.char"
global.char = 1;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 459F8EC9
/// @DnDInput : 3
/// @DnDArgument : "var" "snd"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "snd_female_hey_01"
/// @DnDArgument : "option_1" "snd_female_hey_02"
/// @DnDArgument : "option_2" "snd_female_hey_03"
var snd = choose(snd_female_hey_01, snd_female_hey_02, snd_female_hey_03);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 1F6AF640
/// @DnDArgument : "soundid" "snd"
audio_play_sound(snd, 0, 0, 1.0, undefined, 1.0);