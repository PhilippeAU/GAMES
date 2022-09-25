/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57490043
/// @DnDComment : This event runs when the player collides with an enemy.$(13_10)It checks if the player has fallen on top of the enemy,$(13_10)in which case the enemy is defeated. Otherwise, the player$(13_10)gets hurt.$(13_10)$(13_10)This condition checks if the player's vertical velocity$(13_10)is greater than 0, meaning it's falling down.
/// @DnDArgument : "var" "vel_y"
/// @DnDArgument : "op" "2"
if(vel_y > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3369AFE2
	/// @DnDComment : This checks if the bottom point of the player's$(13_10)collision mask was above the enemy mask's top$(13_10)point, in the previous frame.$(13_10)$(13_10)If this is true, it proves that the player is$(13_10)falling on top of the enemy from above, as it was$(13_10)previously above it.$(13_10)$(13_10)We get the bottom position for the previous frame$(13_10)by subtracting this frame's Y velocity from it.
	/// @DnDParent : 57490043
	/// @DnDArgument : "var" "bbox_bottom - vel_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "other.bbox_top - other.vel_y"
	if(bbox_bottom - vel_y < other.bbox_top - other.vel_y)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AF8930F
		/// @DnDComment : Set the HP of the 'other' instance (which$(13_10)is the enemy) to 0, so that it's defeated.
		/// @DnDParent : 3369AFE2
		/// @DnDArgument : "var" "other.hp"
		other.hp = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 731AA4F9
		/// @DnDComment : Set the vertical velocity of the player$(13_10)to -jump_speed so it bounces off$(13_10)the enemy.
		/// @DnDParent : 3369AFE2
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "vel_y"
		vel_y = -jump_speed;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6E07C0AD
		/// @DnDComment : Change the sprite to spr_player_jump$(13_10)as the player is now jumping (and$(13_10)not falling anymore).
		/// @DnDParent : 3369AFE2
		/// @DnDArgument : "spriteind" "spr_player_jump"
		sprite_index = spr_player_jump;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4D6570BF
		/// @DnDComment : The animation speed at this point would be 0$(13_10)if the fall animation had finished, so we reset$(13_10)it to 1 so the jump animation can play.
		/// @DnDParent : 3369AFE2
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 101B7EFB
		/// @DnDComment : This creates an instance of obj_effect_jump $(13_10)at the bottom of the player's mask. This is the$(13_10)jump VFX animation.$(13_10)
		/// @DnDParent : 3369AFE2
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "bbox_bottom"
		/// @DnDArgument : "objectid" "obj_effect_jump"
		instance_create_layer(x, bbox_bottom, "Instances", obj_effect_jump);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 23FDD21E
		/// @DnDComment : Play the enemy hit sound effect
		/// @DnDParent : 3369AFE2
		/// @DnDArgument : "soundid" "snd_enemy_hit"
		audio_play_sound(snd_enemy_hit, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 63BC8A07
		/// @DnDComment : Play the jump sound, and store the played sound's ID$(13_10)in a temporary variable
		/// @DnDParent : 3369AFE2
		/// @DnDArgument : "target" "sound"
		/// @DnDArgument : "target_temp" "1"
		/// @DnDArgument : "soundid" "snd_jump"
		var sound = audio_play_sound(snd_jump, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 753C1565
		/// @DnDComment : Get a random value to use for the jump sound's pitch
		/// @DnDParent : 3369AFE2
		/// @DnDArgument : "var" "pitch"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "min" "0.8"
		var pitch = (random_range(0.8, 1));
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
		/// @DnDVersion : 1
		/// @DnDHash : 3E39A27C
		/// @DnDComment : Change the jump sound's pitch through its ID variable
		/// @DnDParent : 3369AFE2
		/// @DnDArgument : "sound" "sound"
		/// @DnDArgument : "pitch" "pitch"
		audio_sound_pitch(sound, pitch);
	
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 49718138
		/// @DnDComment : Finally, exit the event so the$(13_10)rest of the actions don't run$(13_10)(they make the player hurt)
		/// @DnDParent : 3369AFE2
		exit;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 207E7703
/// @DnDComment : This checks if the player is invincible,$(13_10)by checking if no_hurt_frames is greater$(13_10)than 0.
/// @DnDArgument : "var" "no_hurt_frames"
/// @DnDArgument : "op" "2"
if(no_hurt_frames > 0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3427C69C
	/// @DnDComment : In that case we exit the event so the$(13_10)player is not hurt by the enemy.
	/// @DnDParent : 207E7703
	exit;
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 666D2B99
/// @DnDComment : This section hurts the player,$(13_10)because it only runs if the player$(13_10)was not found to be jumping on the$(13_10)enemy's head.$(13_10)$(13_10)This action gets the sign (1, 0 or -1) from the$(13_10)enemy's position to the player's position.
/// @DnDArgument : "var" "_x_sign"
/// @DnDArgument : "value" "sign(x - other.x)"
var _x_sign = sign(x - other.x);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0195D4A3
/// @DnDComment : That sign is multiplied by 15, and applied$(13_10)to vel_x as the knockback.
/// @DnDArgument : "expr" "_x_sign * 15"
/// @DnDArgument : "var" "vel_x"
vel_x = _x_sign * 15;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2472FF4D
/// @DnDComment : This first reduces the player's health$(13_10)by the damage amount in the 'other' instance$(13_10)(which is the enemy).$(13_10)$(13_10)Then it sets 'in_knockback' to true to tell$(13_10)the player that it's in knockback.
/// @DnDInput : 2
/// @DnDArgument : "expr" "-other.damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "true"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "in_knockback"
hp += -other.damage;
in_knockback = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4662ECAA
/// @DnDComment : This sets no_hurt_frames to 120, so the player$(13_10)is invincible for the next 2 seconds (as one$(13_10)second contains 60 frames).
/// @DnDArgument : "expr" "120"
/// @DnDArgument : "var" "no_hurt_frames"
no_hurt_frames = 120;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6D99FC55
/// @DnDComment : This changes the sprite to the hurt sprite.
/// @DnDArgument : "spriteind" "spr_player_hurt"
sprite_index = spr_player_hurt;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 01F45CBC
/// @DnDComment : Set Alarm 0 to run after 15 frames;$(13_10)that event stops the player's horizontal velocity,$(13_10)ending the knockback
/// @DnDArgument : "steps" "15"
alarm_set(0, 15);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4C66E2A5
/// @DnDComment : Play the 'life lost' sound effect
/// @DnDArgument : "soundid" "snd_life_lost_01"
audio_play_sound(snd_life_lost_01, 0, 0, 1.0, undefined, 1.0);