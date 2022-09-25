/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17E931C0
/// @DnDArgument : "var" "global.score_rescue"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "global.highscore_rescue"
if(global.score_rescue > global.highscore_rescue)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FD914C6
	/// @DnDParent : 17E931C0
	/// @DnDArgument : "expr" "global.score_rescue"
	/// @DnDArgument : "var" "global.highscore_rescue"
	global.highscore_rescue = global.score_rescue;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 39BFC7F3
	/// @DnDParent : 17E931C0
	/// @DnDArgument : "soundid" "snd_highscore"
	/// @DnDSaveInfo : "soundid" "snd_highscore"
	audio_play_sound(snd_highscore, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 40675AA7
	/// @DnDParent : 17E931C0
	/// @DnDArgument : "times" "30"
	repeat(30)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 670873A5
		/// @DnDParent : 40675AA7
		/// @DnDArgument : "xpos" "irandom_range(bbox_left, bbox_right)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_gold_particle"
		/// @DnDArgument : "layer" ""TopLayer""
		/// @DnDSaveInfo : "objectid" "obj_gold_particle"
		instance_create_layer(irandom_range(bbox_left, bbox_right), y + 0, "TopLayer", obj_gold_particle);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2DCCBFE9
	/// @DnDParent : 17E931C0
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 1);
}