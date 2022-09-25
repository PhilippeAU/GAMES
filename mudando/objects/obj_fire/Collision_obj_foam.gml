/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3212131A
/// @DnDComment : If the alpha is <0 meaning$(13_10)that the fire is fading away$(13_10)then we don't want to run$(13_10)this event$(13_10)$(13_10)In this case this event$(13_10)will be exited
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(image_alpha < 1)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7C964CAF
	/// @DnDParent : 3212131A
	exit;
}

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 79FBE68E
/// @DnDComment : Foam destroys fire$(13_10)so this event plays a random$(13_10)fire extinguish sound,$(13_10)creates fire out instance$(13_10)and starts an alarm$(13_10)then destroys the foam (which is$(13_10)the "other" instance)
/// @DnDInput : 3
/// @DnDArgument : "var" "snd"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option" "snd_extinguish_01"
/// @DnDArgument : "option_1" "snd_extinguish_02"
/// @DnDArgument : "option_2" "snd_extinguish_03"
var snd = choose(snd_extinguish_01, snd_extinguish_02, snd_extinguish_03);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0C4072F5
/// @DnDArgument : "soundid" "snd"
audio_play_sound(snd, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6275D833
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_fire_out"
/// @DnDArgument : "layer" "layer"
/// @DnDSaveInfo : "objectid" "obj_fire_out"
instance_create_layer(x + 0, y + 0, layer, obj_fire_out);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6329D609
/// @DnDComment : Start alarm that makes$(13_10)this instance fade away
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7C420CB5
/// @DnDComment : Set alarm 0 in other instance$(13_10)(foam) so it is destroyed$(13_10)later
/// @DnDApplyTo : other
/// @DnDArgument : "steps" "1"
with(other) {
alarm_set(0, 1);

}