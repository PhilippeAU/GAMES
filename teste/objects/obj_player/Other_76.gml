/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 6FD5C0AC
/// @DnDComment : This event runs when a Broadcast Message is received.$(13_10)We're expecting the "footstep" message set in spr_player_walk,$(13_10)which tells when the player has put a foot down.$(13_10)$(13_10)This action reads the received message from the event_data map,$(13_10)where it's stored in the "message" key.$(13_10)$(13_10)The returned value is stored in a temporary variable.$(13_10)
/// @DnDArgument : "assignee" "message"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "event_data"
/// @DnDArgument : "key" ""message""
var message = ds_map_find_value(event_data, "message");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75B10755
/// @DnDComment : This checks if the message is "footstep", meaning the player$(13_10)has put a foot down. In that case we will create a dust effect.$(13_10)
/// @DnDArgument : "var" "message"
/// @DnDArgument : "value" ""footstep""
if(message == "footstep")
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2BA07307
	/// @DnDComment : This creates an instance of obj_effect_walk $(13_10)at the bottom of the player's mask. This is the$(13_10)walking dust animation.$(13_10)$(13_10)The ID of the created instance is stored in a$(13_10)temporary variable.$(13_10)
	/// @DnDParent : 75B10755
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "bbox_bottom"
	/// @DnDArgument : "var" "effect"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_effect_walk"
	var effect = instance_create_layer(x, bbox_bottom, "Instances", obj_effect_walk);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67F8F9D0
	/// @DnDComment : This sets the horizontal scale of the effect$(13_10)to the player's horizontal scale. This way$(13_10)it flips based on which direction the player$(13_10)is moving in.$(13_10)
	/// @DnDParent : 75B10755
	/// @DnDArgument : "expr" "image_xscale"
	/// @DnDArgument : "var" "effect.image_xscale"
	effect.image_xscale = image_xscale;

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 6429B89D
	/// @DnDComment : Choose a random sound to play on footstep
	/// @DnDInput : 3
	/// @DnDParent : 75B10755
	/// @DnDArgument : "var" "sound"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "snd_footstep_01"
	/// @DnDArgument : "option_1" "snd_footstep_02"
	/// @DnDArgument : "option_2" "snd_footstep_03"
	var sound = choose(snd_footstep_01, snd_footstep_02, snd_footstep_03);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 101AC58A
	/// @DnDComment : Play that sound
	/// @DnDParent : 75B10755
	/// @DnDArgument : "soundid" "sound"
	audio_play_sound(sound, 0, 0, 1.0, undefined, 1.0);
}