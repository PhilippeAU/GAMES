/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 013EC74A
/// @DnDComment : When you release the mouse,$(13_10)the frame changes$(13_10)and the button sound is played$(13_10)$(13_10)Children objects can inherit this event$(13_10)to implement their click behaviour
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "spr_button"
/// @DnDSaveInfo : "spriteind" "spr_button"
sprite_index = spr_button;
image_index = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 3E09DCA3
/// @DnDArgument : "soundid" "snd_button"
/// @DnDSaveInfo : "soundid" "snd_button"
audio_play_sound(snd_button, 0, 0, 1.0, undefined, 1.0);