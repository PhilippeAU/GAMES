/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7DA3EE96
/// @DnDArgument : "var" "os_browser"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "browser_not_a_browser"
if(!(os_browser == browser_not_a_browser))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7229E38F
	/// @DnDParent : 7DA3EE96
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 427AF58A
/// @DnDComment : Hovering over mouse$(13_10)changes frame
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_button"
/// @DnDSaveInfo : "spriteind" "spr_button"
sprite_index = spr_button;
image_index += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 051C9D42
/// @DnDComment : Play hover sfx
/// @DnDArgument : "soundid" "snd_button_hover"
/// @DnDSaveInfo : "soundid" "snd_button_hover"
audio_play_sound(snd_button_hover, 0, 0, 1.0, undefined, 1.0);