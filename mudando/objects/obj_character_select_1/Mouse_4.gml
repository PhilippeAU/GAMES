/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 529D971B
/// @DnDArgument : "var" "global.char"
global.char = 0;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 5552D1C4
/// @DnDInput : 3
/// @DnDArgument : "var" "snd"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "snd_male_hey_01"
/// @DnDArgument : "option_1" "snd_male_hey_02"
/// @DnDArgument : "option_2" "snd_male_hey_03"
var snd = choose(snd_male_hey_01, snd_male_hey_02, snd_male_hey_03);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 00FE1079
/// @DnDArgument : "soundid" "snd"
audio_play_sound(snd, 0, 0, 1.0, undefined, 1.0);