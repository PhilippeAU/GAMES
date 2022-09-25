/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 45D1DCB9
/// @DnDComment : Play music track with looping enabled
/// @DnDArgument : "soundid" "snd_music_level"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_music_level"
audio_play_sound(snd_music_level, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2C61EE1A
/// @DnDComment : Play ambient audio with looping enabled
/// @DnDArgument : "soundid" "snd_amb_trees"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_amb_trees"
audio_play_sound(snd_amb_trees, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 381FCD75
/// @DnDArgument : "soundid" "snd_amb_wind"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_amb_wind"
audio_play_sound(snd_amb_wind, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 795CF4A4
/// @DnDArgument : "soundid" "snd_amb_cave_01"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_amb_cave_01"
audio_play_sound(snd_amb_cave_01, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 5CC141CB
/// @DnDComment : You're probably wondering why we're playing so many$(13_10)looping ambient tracks at once... It's so we can get$(13_10)them started once and then change their gains (volume)$(13_10)depending on where the player is in-game. See User Event$(13_10)0 for that.
/// @DnDArgument : "soundid" "snd_amb_cave_02"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_amb_cave_02"
audio_play_sound(snd_amb_cave_02, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Audio.Audio_Get_Volume
/// @DnDVersion : 1
/// @DnDHash : 74A66F20
/// @DnDComment : Get the volumes for these sound assets so we know what$(13_10)volume value to use for each one of them, when managing$(13_10)their volumes later
/// @DnDArgument : "var" "vol_trees"
/// @DnDArgument : "sound" "snd_amb_trees"
/// @DnDSaveInfo : "sound" "snd_amb_trees"
vol_trees = audio_sound_get_gain(snd_amb_trees);

/// @DnDAction : YoYo Games.Audio.Audio_Get_Volume
/// @DnDVersion : 1
/// @DnDHash : 1862BCF3
/// @DnDArgument : "var" "vol_wind"
/// @DnDArgument : "sound" "snd_amb_wind"
/// @DnDSaveInfo : "sound" "snd_amb_wind"
vol_wind = audio_sound_get_gain(snd_amb_wind);

/// @DnDAction : YoYo Games.Audio.Audio_Get_Volume
/// @DnDVersion : 1
/// @DnDHash : 0064CC2F
/// @DnDArgument : "var" "vol_cave_1"
/// @DnDArgument : "sound" "snd_amb_cave_01"
/// @DnDSaveInfo : "sound" "snd_amb_cave_01"
vol_cave_1 = audio_sound_get_gain(snd_amb_cave_01);

/// @DnDAction : YoYo Games.Audio.Audio_Get_Volume
/// @DnDVersion : 1
/// @DnDHash : 5E922F7D
/// @DnDArgument : "var" "vol_cave_2"
/// @DnDArgument : "sound" "snd_amb_cave_02"
/// @DnDSaveInfo : "sound" "snd_amb_cave_02"
vol_cave_2 = audio_sound_get_gain(snd_amb_cave_02);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 0E565113
/// @DnDComment : Set all cave audio to be muted, as we know the player$(13_10)starts out in the forest
/// @DnDArgument : "sound" "snd_amb_cave_01"
/// @DnDArgument : "volume" "0"
/// @DnDSaveInfo : "sound" "snd_amb_cave_01"
audio_sound_gain(snd_amb_cave_01, 0, 0);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 39ABD1AA
/// @DnDArgument : "sound" "snd_amb_cave_02"
/// @DnDArgument : "volume" "0"
/// @DnDSaveInfo : "sound" "snd_amb_cave_02"
audio_sound_gain(snd_amb_cave_02, 0, 0);