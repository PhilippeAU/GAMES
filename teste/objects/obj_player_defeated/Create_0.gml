/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 78B2E57B
/// @DnDComment : Enable gravity
/// @DnDArgument : "force" "1.5"
gravity = 1.5;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6763D477
/// @DnDComment : Make the instance jump up
/// @DnDArgument : "speed" "-40"
/// @DnDArgument : "type" "2"
vspeed = -40;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 16129A26
/// @DnDComment : Flip the sprite horizontally so it faces right$(13_10)(as the original sprite for this object faces$(13_10)left)
/// @DnDArgument : "xscale" "-1"
image_xscale = -1;
image_yscale = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6563941F
/// @DnDComment : Set Alarm 0 to run after a while, which starts$(13_10)the transition$(13_10)
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 163680A5
/// @DnDComment : Stop all playing audio
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 26862D46
/// @DnDComment : Play the lose sound effect
/// @DnDArgument : "soundid" "snd_music_lose"
/// @DnDSaveInfo : "soundid" "snd_music_lose"
audio_play_sound(snd_music_lose, 0, 0, 1.0, undefined, 1.0);