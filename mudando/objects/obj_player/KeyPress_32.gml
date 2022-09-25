/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 283D18E5
/// @DnDComment : Create foam instance
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_foam"
/// @DnDArgument : "layer" ""Foam""
/// @DnDSaveInfo : "objectid" "obj_foam"
instance_create_layer(x + 0, y + 0, "Foam", obj_foam);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 69766601
/// @DnDComment : Play shooting sound
/// @DnDArgument : "soundid" "snd_player_shoot"
/// @DnDSaveInfo : "soundid" "snd_player_shoot"
audio_play_sound(snd_player_shoot, 0, 0, 1.0, undefined, 1.0);