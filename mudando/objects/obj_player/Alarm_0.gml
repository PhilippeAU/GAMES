/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 03A6C5BA
/// @DnDComment : If the player is falling
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "sprite_fall"
if(sprite_index == sprite_fall)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 7516C74B
	/// @DnDComment : and there is no window$(13_10)below the player as far$(13_10)as 600 pixels
	/// @DnDParent : 03A6C5BA
	/// @DnDArgument : "x1" "bbox_left"
	/// @DnDArgument : "y1" "y"
	/// @DnDArgument : "x2" "bbox_right"
	/// @DnDArgument : "y2" "y + 600"
	/// @DnDArgument : "obj" "obj_window"
	/// @DnDArgument : "shape" "1"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_window"
	var l7516C74B_0 = collision_rectangle(bbox_left, y, bbox_right, y + 600, obj_window, true, 1);
	if(!(l7516C74B_0))
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 25D47430
		/// @DnDComment : Then play the falling$(13_10)sound
		/// @DnDParent : 7516C74B
		/// @DnDArgument : "soundid" "snd_player_fall"
		/// @DnDSaveInfo : "soundid" "snd_player_fall"
		audio_play_sound(snd_player_fall, 0, 0, 1.0, undefined, 1.0);
	}
}