/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 679F6644
/// @DnDComment : Switch from the transition sprite$(13_10)to the rescued sprite based on the$(13_10)civilian type
/// @DnDArgument : "expr" "sprite_index"
var l679F6644_0 = sprite_index;
switch(l679F6644_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 63A6F856
	/// @DnDParent : 679F6644
	/// @DnDArgument : "const" "spr_civilian_transition_0"
	case spr_civilian_transition_0:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4B65EFB7
		/// @DnDParent : 63A6F856
		/// @DnDArgument : "spriteind" "spr_civilian_rescued_0"
		/// @DnDSaveInfo : "spriteind" "spr_civilian_rescued_0"
		sprite_index = spr_civilian_rescued_0;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7B1C1B26
	/// @DnDParent : 679F6644
	/// @DnDArgument : "const" "spr_civilian_transition_1"
	case spr_civilian_transition_1:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 10DF2888
		/// @DnDParent : 7B1C1B26
		/// @DnDArgument : "spriteind" "spr_civilian_rescued_1"
		/// @DnDSaveInfo : "spriteind" "spr_civilian_rescued_1"
		sprite_index = spr_civilian_rescued_1;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4FC2CB18
	/// @DnDParent : 679F6644
	/// @DnDArgument : "const" "spr_civilian_transition_2"
	case spr_civilian_transition_2:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 27B8B1CC
		/// @DnDParent : 4FC2CB18
		/// @DnDArgument : "spriteind" "spr_civilian_rescued_2"
		/// @DnDSaveInfo : "spriteind" "spr_civilian_rescued_2"
		sprite_index = spr_civilian_rescued_2;
		image_index = 0;
		break;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 063E401F
/// @DnDComment : Make it jump and enable gravity$(13_10)Change depth to appear above player
/// @DnDArgument : "speed" "-18"
/// @DnDArgument : "type" "2"
vspeed = -18;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 3C9FA82C
/// @DnDArgument : "force" "0.5"
gravity = 0.5;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 60CC9732
/// @DnDArgument : "value" "obj_player.depth - 10"
/// @DnDArgument : "instvar" "9"
depth = obj_player.depth - 10;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 1EB37E79
/// @DnDComment : Create gold particles
/// @DnDArgument : "times" "irandom_range(5, 7)"
repeat(irandom_range(5, 7))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 15800EDE
	/// @DnDParent : 1EB37E79
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-100"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_gold_particle"
	/// @DnDArgument : "layer" ""Foam""
	/// @DnDSaveInfo : "objectid" "obj_gold_particle"
	instance_create_layer(x + 0, y + -100, "Foam", obj_gold_particle);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 32F2556D
/// @DnDArgument : "target" "snd"
/// @DnDArgument : "soundid" "snd_player_fall"
/// @DnDSaveInfo : "soundid" "snd_player_fall"
snd = audio_play_sound(snd_player_fall, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 4242781A
/// @DnDArgument : "sound" "snd"
/// @DnDArgument : "pitch" "random_range(0.6, 0.7)"
audio_sound_pitch(snd, random_range(0.6, 0.7));

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 63BD3131
/// @DnDArgument : "sound" "snd"
/// @DnDArgument : "volume" "0.5"
audio_sound_gain(snd, 0.5, 0);