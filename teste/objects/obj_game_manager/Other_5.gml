/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 74A4BC48
/// @DnDComment : Restore ambient audio volumes
/// @DnDArgument : "sound" "snd_amb_cave_01"
/// @DnDArgument : "volume" "vol_cave_1"
/// @DnDSaveInfo : "sound" "snd_amb_cave_01"
audio_sound_gain(snd_amb_cave_01, vol_cave_1, 0);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 1C4D70DA
/// @DnDArgument : "sound" "snd_amb_cave_02"
/// @DnDArgument : "volume" "vol_cave_2"
/// @DnDSaveInfo : "sound" "snd_amb_cave_02"
audio_sound_gain(snd_amb_cave_02, vol_cave_2, 0);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 1FFD8CEE
/// @DnDArgument : "sound" "snd_amb_trees"
/// @DnDArgument : "volume" "vol_trees"
/// @DnDSaveInfo : "sound" "snd_amb_trees"
audio_sound_gain(snd_amb_trees, vol_trees, 0);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 0A4FA720
/// @DnDArgument : "sound" "snd_amb_wind"
/// @DnDArgument : "volume" "vol_wind"
/// @DnDSaveInfo : "sound" "snd_amb_wind"
audio_sound_gain(snd_amb_wind, vol_wind, 0);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 1F018734
/// @DnDComment : Stop music and ambient audio
/// @DnDArgument : "soundid" "snd_music_level"
/// @DnDSaveInfo : "soundid" "snd_music_level"
audio_stop_sound(snd_music_level);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 07F7ABF6
/// @DnDArgument : "soundid" "snd_amb_cave_01"
/// @DnDSaveInfo : "soundid" "snd_amb_cave_01"
audio_stop_sound(snd_amb_cave_01);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 281C493F
/// @DnDArgument : "soundid" "snd_amb_cave_02"
/// @DnDSaveInfo : "soundid" "snd_amb_cave_02"
audio_stop_sound(snd_amb_cave_02);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 5CB180F0
/// @DnDArgument : "soundid" "snd_amb_trees"
/// @DnDSaveInfo : "soundid" "snd_amb_trees"
audio_stop_sound(snd_amb_trees);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 1E86734C
/// @DnDArgument : "soundid" "snd_amb_wind"
/// @DnDSaveInfo : "soundid" "snd_amb_wind"
audio_stop_sound(snd_amb_wind);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 3AE1767E
/// @DnDComment : Restore the leaf count for the leaves effect
/// @DnDInput : 3
/// @DnDArgument : "function" "fx_set_parameter"
/// @DnDArgument : "arg" "effect_leaf"
/// @DnDArgument : "arg_1" ""param_num_particles""
/// @DnDArgument : "arg_2" "leaf_count"
fx_set_parameter(effect_leaf, "param_num_particles", leaf_count);