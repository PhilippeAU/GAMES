/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 223CF9A0
/// @DnDComment : This event runs when the instance$(13_10)goes out of the room.$(13_10)$(13_10)This condition checks if the top edge$(13_10)of the player's mask is below the room,$(13_10)meaning it's completely outside the room$(13_10)now.
/// @DnDArgument : "var" "bbox_top"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(bbox_top > room_height)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 393ECFEF
	/// @DnDComment : This reduces the health by 1.
	/// @DnDParent : 223CF9A0
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hp"
	hp += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C9E3E32
	/// @DnDComment : If the player still has hp left,
	/// @DnDParent : 223CF9A0
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "2"
	if(hp > 0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 04D3ACBE
		/// @DnDComment : This moves the player to the position$(13_10)stored in the grounded_x and _y variables,$(13_10)which is the position when it was last on$(13_10)ground.
		/// @DnDParent : 5C9E3E32
		/// @DnDArgument : "x" "grounded_x"
		/// @DnDArgument : "y" "grounded_y"
		x = grounded_x;
		y = grounded_y;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 143F58F9
		/// @DnDComment : This gives 2 seconds of invincibility to$(13_10)the player.
		/// @DnDParent : 5C9E3E32
		/// @DnDArgument : "expr" "120"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "no_hurt_frames"
		no_hurt_frames += 120;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 398B9AB6
		/// @DnDComment : This resets the X and Y velocities of the$(13_10)player so it stops all movement.$(13_10)
		/// @DnDInput : 2
		/// @DnDParent : 5C9E3E32
		/// @DnDArgument : "var" "vel_x"
		/// @DnDArgument : "var_1" "vel_y"
		vel_x = 0;
		vel_y = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57BBCA59
		/// @DnDComment : This sets a knockback state for 20 frames$(13_10)(using the Alarm below) so user input is$(13_10)disabled for that period, meaning the player$(13_10)doesn't immediately fall into the hurt zone$(13_10)again.$(13_10)
		/// @DnDParent : 5C9E3E32
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "in_knockback"
		in_knockback = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 02415A50
		/// @DnDParent : 5C9E3E32
		/// @DnDArgument : "steps" "20"
		alarm_set(0, 20);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 3105AD05
		/// @DnDComment : Play the 'life lost' sound effect
		/// @DnDParent : 5C9E3E32
		/// @DnDArgument : "soundid" "snd_life_lost_01"
		audio_play_sound(snd_life_lost_01, 0, 0, 1.0, undefined, 1.0);
	}
}