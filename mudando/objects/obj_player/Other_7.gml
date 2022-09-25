/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09FC2676
/// @DnDComment : If the jump animation$(13_10)ended, make the player$(13_10)jump, and start transition$(13_10)to in-air animation
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "sprite_jump"
if(sprite_index == sprite_jump)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 505B33AE
	/// @DnDParent : 09FC2676
	/// @DnDArgument : "spriteind" "sprite_jump_to_air"
	sprite_index = sprite_jump_to_air;
	image_index = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 04830C4D
	/// @DnDParent : 09FC2676
	/// @DnDArgument : "speed" "-35"
	/// @DnDArgument : "type" "2"
	vspeed = -35;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 21FAC36C
	/// @DnDComment : Resume gravity
	/// @DnDParent : 09FC2676
	gravity = 1;

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 7853471F
	/// @DnDComment : Select random jump sound$(13_10)from the 3 that are in the$(13_10)assets
	/// @DnDInput : 3
	/// @DnDParent : 09FC2676
	/// @DnDArgument : "var" "shoot_sound"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "snd_player_jump_1"
	/// @DnDArgument : "option_1" "snd_player_jump_2"
	/// @DnDArgument : "option_2" "snd_player_jump_3"
	var shoot_sound = choose(snd_player_jump_1, snd_player_jump_2, snd_player_jump_3);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2FF3F099
	/// @DnDComment : Play that sound
	/// @DnDParent : 09FC2676
	/// @DnDArgument : "soundid" "shoot_sound"
	audio_play_sound(shoot_sound, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 249EAFA0
	/// @DnDComment : Create jump effect$(13_10)at 0, bbox_bottom$(13_10)$(13_10)bbox_bottom is the$(13_10)bottom edge of the$(13_10)instance's mask
	/// @DnDParent : 09FC2676
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "bbox_bottom"
	/// @DnDArgument : "objectid" "obj_jump_effect"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "obj_jump_effect"
	instance_create_layer(x + 0, bbox_bottom, "Player", obj_jump_effect);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4182C216
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C10877E
	/// @DnDComment : If the jump to air$(13_10)transition animation$(13_10)ended, switch to$(13_10)in-air sprite
	/// @DnDParent : 4182C216
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "sprite_jump_to_air"
	if(sprite_index == sprite_jump_to_air)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 57AAC336
		/// @DnDParent : 3C10877E
		/// @DnDArgument : "spriteind" "sprite_air"
		sprite_index = sprite_air;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 66F5DF68
	/// @DnDParent : 4182C216
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 334E6EF1
		/// @DnDComment : If the air to fall$(13_10)transition animation$(13_10)ended, switch to$(13_10)fall sprite
		/// @DnDParent : 66F5DF68
		/// @DnDArgument : "var" "sprite_index"
		/// @DnDArgument : "value" "sprite_air_to_fall"
		if(sprite_index == sprite_air_to_fall)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 60BA913D
			/// @DnDParent : 334E6EF1
			/// @DnDArgument : "spriteind" "sprite_fall"
			sprite_index = sprite_fall;
			image_index = 0;
		}
	}
}