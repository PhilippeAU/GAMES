/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 242AA6FF
/// @DnDComment : This runs the parent's End Step event, which handles$(13_10)flipping the character's sprite left or right.
event_inherited();

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2697BE31
/// @DnDComment : This is a Switch statement that runs on the$(13_10)'sprite_index' variable, which stores the sprite$(13_10)currently assigned to the instance.$(13_10)$(13_10)This allows us to transition to some other sprite,$(13_10)depending on the currently assigned sprite, and some$(13_10)additional conditions.
/// @DnDArgument : "expr" "sprite_index"
var l2697BE31_0 = sprite_index;
switch(l2697BE31_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5C3169AA
	/// @DnDComment : Actions assigned to this Case run if the$(13_10)assigned sprite is 'spr_player_walk', meaning$(13_10)the player is walking.
	/// @DnDParent : 2697BE31
	/// @DnDArgument : "const" "spr_player_walk"
	case spr_player_walk:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 42A5CDC4
		/// @DnDComment : Set the animation speed to 1, as it may have$(13_10)been set to 0 during the jump animation.
		/// @DnDParent : 5C3169AA
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41966973
		/// @DnDComment : This checks if the X velocity is 0, meaning$(13_10)the player is not moving horizontally.
		/// @DnDParent : 5C3169AA
		/// @DnDArgument : "var" "vel_x"
		if(vel_x == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 468CA1EA
			/// @DnDComment : In that case we change its sprite to the idle one.
			/// @DnDParent : 41966973
			/// @DnDArgument : "value" "spr_player_idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_player_idle;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 441861AA
		/// @DnDComment : This checks if the Y velocity of the player$(13_10)is greater than 1, meaning it is falling down.$(13_10)$(13_10)This would happen when the player walks off$(13_10)a ledge.
		/// @DnDParent : 5C3169AA
		/// @DnDArgument : "var" "vel_y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(vel_y > 1)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 05DD2AC7
			/// @DnDComment : In that case we change its sprite to the fall one,$(13_10)and reset the frame to 0.
			/// @DnDParent : 441861AA
			/// @DnDArgument : "spriteind" "spr_player_fall"
			sprite_index = spr_player_fall;
			image_index = 0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7180DA62
	/// @DnDComment : Actions assigned to this Case run if the$(13_10)assigned sprite is 'spr_player_jump', meaning$(13_10)the player was in the middle of a jump.
	/// @DnDParent : 2697BE31
	/// @DnDArgument : "const" "spr_player_jump"
	case spr_player_jump:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EC5D8FB
		/// @DnDComment : This checks if the Y velocity is equal to,$(13_10)or greater than 0, meaning the player has$(13_10)now started falling downward.
		/// @DnDParent : 7180DA62
		/// @DnDArgument : "var" "vel_y"
		/// @DnDArgument : "op" "4"
		if(vel_y >= 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 33697599
			/// @DnDComment : In that case we change its sprite to the fall sprite,$(13_10)and reset the frame to 0.
			/// @DnDParent : 3EC5D8FB
			/// @DnDArgument : "spriteind" "spr_player_fall"
			sprite_index = spr_player_fall;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 061592C2
			/// @DnDComment : We also reset the animation speed to 1, as it was set$(13_10)to 0 at the end of the jump animation.
			/// @DnDParent : 3EC5D8FB
			image_speed = 1;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 35DFA4EE
	/// @DnDComment : Actions assigned to this Case run if the$(13_10)assigned sprite is 'spr_player_fall', meaning$(13_10)the player was falling downward.
	/// @DnDParent : 2697BE31
	/// @DnDArgument : "const" "spr_player_fall"
	case spr_player_fall:
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 162BC65F
		/// @DnDComment : This checks if the player is now on the ground
		/// @DnDParent : 35DFA4EE
		/// @DnDArgument : "expr" "grounded"
		if(grounded)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3B0F06DE
			/// @DnDComment : In that case we change its sprite to the idle sprite.
			/// @DnDParent : 162BC65F
			/// @DnDArgument : "value" "spr_player_idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = spr_player_idle;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 61040EF9
			/// @DnDComment : We also reset the animation speed to 1, as it was set$(13_10)to 0 at the end of the fall animation.
			/// @DnDParent : 162BC65F
			image_speed = 1;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7B378E89
			/// @DnDComment : Play the landing sound effect
			/// @DnDParent : 162BC65F
			/// @DnDArgument : "soundid" "snd_land_01"
			audio_play_sound(snd_land_01, 0, 0, 1.0, undefined, 1.0);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 58522081
	/// @DnDComment : Actions assigned to this Case run if the$(13_10)assigned sprite is 'spr_player_hurt', meaning$(13_10)the player is in the middle of a knockback.
	/// @DnDParent : 2697BE31
	/// @DnDArgument : "const" "spr_player_hurt"
	case spr_player_hurt:
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 12554785
		/// @DnDComment : This checks if the player is grounded,$(13_10)so the dust VFX can be created.
		/// @DnDParent : 58522081
		/// @DnDArgument : "expr" "grounded"
		if(grounded)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 361D70D8
			/// @DnDComment : This creates an instance of obj_effect_knockback,$(13_10)which appears at the player's feet when it's$(13_10)in knockback.$(13_10)$(13_10)It's created at the bottom point of the player's$(13_10)mask, in the player's layer.$(13_10)$(13_10)The ID of the created instance is stored in a$(13_10)temporary variable called 'dust', because we want$(13_10)to modify its horizontal (X) scale.
			/// @DnDParent : 12554785
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "bbox_bottom"
			/// @DnDArgument : "var" "dust"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_effect_knockback"
			/// @DnDArgument : "layer" "layer"
			var dust = instance_create_layer(x, bbox_bottom, layer, obj_effect_knockback);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 324FE9D0
			/// @DnDComment : Here we're modifying the X scale of the dust$(13_10)instance to match the X scale of the player.
			/// @DnDParent : 12554785
			/// @DnDArgument : "expr" "image_xscale"
			/// @DnDArgument : "var" "dust.image_xscale"
			dust.image_xscale = image_xscale;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 1AAA0C4D
	/// @DnDComment : 'Default' actions run when none of the other cases are valid,$(13_10)meaning the currently assigned sprite is not covered by any$(13_10)of the cases above.
	/// @DnDParent : 2697BE31
	default:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 26109A23
		/// @DnDComment : For all other sprites we set the animation speed$(13_10)to 1.
		/// @DnDParent : 1AAA0C4D
		image_speed = 1;
		break;
}