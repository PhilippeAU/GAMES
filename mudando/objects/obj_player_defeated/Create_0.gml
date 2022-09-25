/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 2A1345C1
/// @DnDComment : This instance is created when$(13_10)the player loses, at which moment$(13_10)the player instance itself is destroyed.$(13_10)$(13_10)This stops the game music$(13_10)and makes this instance jump$(13_10)and fall.
/// @DnDArgument : "soundid" "snd_game_music"
/// @DnDSaveInfo : "soundid" "snd_game_music"
audio_stop_sound(snd_game_music);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 640F988A
/// @DnDArgument : "spriteind" "obj_player.sprite_defeated"
sprite_index = obj_player.sprite_defeated;
image_index = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3D564C38
/// @DnDArgument : "speed" "-25"
/// @DnDArgument : "type" "2"
vspeed = -25;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 4D99AFB4
gravity = 1;