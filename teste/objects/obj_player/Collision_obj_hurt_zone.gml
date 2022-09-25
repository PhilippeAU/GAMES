/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1F5C6C74
/// @DnDComment : This reduces the health by 1.
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
hp += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53B41251
/// @DnDComment : If the player still has hp left,
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "2"
if(hp > 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7E9B72DF
	/// @DnDComment : This moves the player to the position$(13_10)stored in the grounded_x and _y variables,$(13_10)which is the position when it was last on$(13_10)ground.
	/// @DnDParent : 53B41251
	/// @DnDArgument : "x" "grounded_x"
	/// @DnDArgument : "y" "grounded_y"
	x = grounded_x;
	y = grounded_y;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39F1B8D7
	/// @DnDComment : This gives 2 seconds of invincibility to$(13_10)the player.
	/// @DnDParent : 53B41251
	/// @DnDArgument : "expr" "120"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "no_hurt_frames"
	no_hurt_frames += 120;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64768855
	/// @DnDComment : This resets the X and Y velocities of the$(13_10)player so it stops all movement.$(13_10)
	/// @DnDInput : 2
	/// @DnDParent : 53B41251
	/// @DnDArgument : "var" "vel_x"
	/// @DnDArgument : "var_1" "vel_y"
	vel_x = 0;
	vel_y = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C52507B
	/// @DnDComment : This sets a knockback state for 20 frames$(13_10)(using the Alarm below) so user input is$(13_10)disabled for that period, meaning the player$(13_10)doesn't immediately fall into the hurt zone$(13_10)again.$(13_10)
	/// @DnDParent : 53B41251
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "in_knockback"
	in_knockback = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 506544F8
	/// @DnDParent : 53B41251
	/// @DnDArgument : "steps" "20"
	alarm_set(0, 20);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2500FFFC
	/// @DnDComment : Play the 'life lost' sound effect
	/// @DnDParent : 53B41251
	/// @DnDArgument : "soundid" "snd_life_lost_01"
	audio_play_sound(snd_life_lost_01, 0, 0, 1.0, undefined, 1.0);
}