/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0938AD81
/// @DnDComment : This checks if the 'grounded' variable is true,$(13_10)meaning the player is standing on the ground, and$(13_10)can jump.$(13_10)
/// @DnDArgument : "expr" "grounded"
if(grounded)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1783AB7A
	/// @DnDComment : This sets the Y velocity to negative jump_speed,$(13_10)making the player immediately jump upwards. It$(13_10)will automatically be brought down by the gravity$(13_10)code in the parent's Begin Step event.
	/// @DnDParent : 0938AD81
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "vel_y"
	vel_y = -jump_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7AB2A4F0
	/// @DnDComment : This changes the player's sprite to the jump sprite,$(13_10)and resets the frame to 0.
	/// @DnDParent : 0938AD81
	/// @DnDArgument : "spriteind" "spr_player_jump"
	sprite_index = spr_player_jump;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11D7246B
	/// @DnDComment : This sets 'grounded' to false, so that any events$(13_10)after this know that the player is not supposed$(13_10)to be on the ground anymore.
	/// @DnDParent : 0938AD81
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "grounded"
	grounded = false;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4ECF00C5
	/// @DnDComment : This creates an instance of obj_effect_jump $(13_10)at the bottom of the player's mask. This is the$(13_10)jump VFX animation.$(13_10)
	/// @DnDParent : 0938AD81
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "bbox_bottom"
	/// @DnDArgument : "objectid" "obj_effect_jump"
	instance_create_layer(x, bbox_bottom, "Instances", obj_effect_jump);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 4D3007FD
	/// @DnDComment : Play the jump sound, and store the played sound's ID$(13_10)in a temporary variable
	/// @DnDParent : 0938AD81
	/// @DnDArgument : "target" "sound"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "soundid" "snd_jump"
	var sound = audio_play_sound(snd_jump, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 35543ED9
	/// @DnDComment : Get a random value to use for the jump sound's pitch
	/// @DnDParent : 0938AD81
	/// @DnDArgument : "var" "pitch"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "min" "0.8"
	var pitch = (random_range(0.8, 1));

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 285C801B
	/// @DnDComment : Change the jump sound's pitch through its ID variable
	/// @DnDParent : 0938AD81
	/// @DnDArgument : "sound" "sound"
	/// @DnDArgument : "pitch" "pitch"
	audio_sound_pitch(sound, pitch);
}