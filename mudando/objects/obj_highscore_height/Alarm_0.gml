/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17E931C0
/// @DnDComment : Is the current height score$(13_10)greater than the height highscore?
/// @DnDArgument : "var" "global.score_height"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.highscore_height"
if(global.score_height > global.highscore_height)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FD914C6
	/// @DnDComment : Update the height highscore to be$(13_10)equal to the height score
	/// @DnDParent : 17E931C0
	/// @DnDArgument : "expr" "global.score_height"
	/// @DnDArgument : "var" "global.highscore_height"
	global.highscore_height = global.score_height;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 39BFC7F3
	/// @DnDComment : Play highscore sound
	/// @DnDParent : 17E931C0
	/// @DnDArgument : "soundid" "snd_highscore"
	/// @DnDSaveInfo : "soundid" "snd_highscore"
	audio_play_sound(snd_highscore, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 29E58866
	/// @DnDComment : Create gold particles
	/// @DnDParent : 17E931C0
	/// @DnDArgument : "times" "30"
	repeat(30)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5AC2B93D
		/// @DnDParent : 29E58866
		/// @DnDArgument : "xpos" "irandom_range(bbox_left, bbox_right)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_gold_particle"
		/// @DnDArgument : "layer" ""TopLayer""
		/// @DnDSaveInfo : "objectid" "obj_gold_particle"
		instance_create_layer(irandom_range(bbox_left, bbox_right), y + 0, "TopLayer", obj_gold_particle);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 34BBFD18
	/// @DnDParent : 17E931C0
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 1);
}