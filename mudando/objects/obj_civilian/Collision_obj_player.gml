/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C1F3386
/// @DnDComment : If not rescued,$(13_10)$(13_10)play rescue sound$(13_10)increase rescue score$(13_10)set rescued to true$(13_10)change sprite to rescue-transition sprite depending on current sprite$(13_10)set alarm to end transition and make civilian jump
/// @DnDArgument : "var" "rescued"
/// @DnDArgument : "value" "false"
if(rescued == false)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6896BFAC
	/// @DnDParent : 5C1F3386
	/// @DnDArgument : "soundid" "snd_civilian_rescue"
	/// @DnDSaveInfo : "soundid" "snd_civilian_rescue"
	audio_play_sound(snd_civilian_rescue, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7BB7DF86
	/// @DnDParent : 5C1F3386
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "score_rescue"
	global.score_rescue += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7041E192
	/// @DnDParent : 5C1F3386
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "rescued"
	rescued = true;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 13249C88
	/// @DnDParent : 5C1F3386
	/// @DnDArgument : "expr" "sprite_index"
	var l13249C88_0 = sprite_index;
	switch(l13249C88_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 52127471
		/// @DnDParent : 13249C88
		/// @DnDArgument : "const" "spr_civilian_0"
		case spr_civilian_0:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 614EE7A4
			/// @DnDParent : 52127471
			/// @DnDArgument : "spriteind" "spr_civilian_transition_0"
			/// @DnDSaveInfo : "spriteind" "spr_civilian_transition_0"
			sprite_index = spr_civilian_transition_0;
			image_index = 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 43E9DC82
		/// @DnDParent : 13249C88
		/// @DnDArgument : "const" "spr_civilian_1"
		case spr_civilian_1:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 13A4A066
			/// @DnDParent : 43E9DC82
			/// @DnDArgument : "spriteind" "spr_civilian_transition_1"
			/// @DnDSaveInfo : "spriteind" "spr_civilian_transition_1"
			sprite_index = spr_civilian_transition_1;
			image_index = 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 019652DC
		/// @DnDParent : 13249C88
		/// @DnDArgument : "const" "spr_civilian_2"
		case spr_civilian_2:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 2057E460
			/// @DnDParent : 019652DC
			/// @DnDArgument : "spriteind" "spr_civilian_transition_2"
			/// @DnDSaveInfo : "spriteind" "spr_civilian_transition_2"
			sprite_index = spr_civilian_transition_2;
			image_index = 0;
			break;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 54DBBDA1
	/// @DnDComment : To change from transition$(13_10)sprite to rescued sprite
	/// @DnDParent : 5C1F3386
	/// @DnDArgument : "steps" "4"
	alarm_set(0, 4);
}