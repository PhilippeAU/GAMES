/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B387B03
/// @DnDComment : If the fire's alpha is <0$(13_10)which means it's fading away$(13_10)then the player should not$(13_10)collide with it$(13_10)$(13_10)In that case we exit the event$(13_10)so the rest of the actions don't$(13_10)run
/// @DnDArgument : "var" "other.image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(other.image_alpha < 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2ECD3C38
	/// @DnDParent : 3B387B03
	exit;
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5991E3B8
/// @DnDComment : Let the fire defeat the player$(13_10)Create defeated instance$(13_10)and remove current instance
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_player_defeated"
/// @DnDArgument : "layer" ""Player""
/// @DnDSaveInfo : "objectid" "obj_player_defeated"
instance_create_layer(x + 0, y + 0, "Player", obj_player_defeated);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7B2B0E19
/// @DnDComment : Play sound for when$(13_10)fire defeats the player
/// @DnDArgument : "soundid" "snd_player_defeat_fire"
/// @DnDSaveInfo : "soundid" "snd_player_defeat_fire"
audio_play_sound(snd_player_defeat_fire, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 59D37CCE
instance_destroy();