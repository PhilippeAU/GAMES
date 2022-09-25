/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 61F79864
/// @DnDComment : This creates the HUD sequence, which$(13_10)shows all HUD elements (such as coins$(13_10)and hearts). It lasts throughout the $(13_10)level.
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_game_hud"
/// @DnDArgument : "layer" ""Instances""
/// @DnDSaveInfo : "sequenceid" "seq_game_hud"
layer_sequence_create("Instances", 0, 0, seq_game_hud);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5AB06E3C
/// @DnDComment : paused: This will be true when the game is paused,$(13_10)and false when it's not$(13_10)$(13_10)pause_sequence: The ID of the Sequence element$(13_10)created for the pause menu, used to close it$(13_10)when the player hits Escape to resume$(13_10)$(13_10)in_cave: Tells whether the player is in a cave (true)$(13_10)or not (false), used for ambient audio
/// @DnDInput : 3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "var" "paused"
/// @DnDArgument : "var_1" "pause_sequence"
/// @DnDArgument : "var_2" "in_cave"
paused = false;
pause_sequence = -1;
in_cave = false;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D4BD5A0
/// @DnDComment : If the game is running on a browser, it creates$(13_10)the touch controls sequence$(13_10)
/// @DnDArgument : "var" "os_browser"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "browser_not_a_browser"
if(!(os_browser == browser_not_a_browser))
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 38FE992B
	/// @DnDParent : 2D4BD5A0
	/// @DnDArgument : "var" ""
	/// @DnDArgument : "sequenceid" "seq_touch_controls"
	/// @DnDArgument : "layer" ""TouchControlsLayer""
	/// @DnDSaveInfo : "sequenceid" "seq_touch_controls"
	layer_sequence_create("TouchControlsLayer", 0, 0, seq_touch_controls);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1E891129
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64710273
	/// @DnDComment : If the game is running on Opera GX, it creates$(13_10)the touch controls sequence$(13_10)
	/// @DnDParent : 1E891129
	/// @DnDArgument : "var" "os_type"
	/// @DnDArgument : "value" "os_operagx"
	if(os_type == os_operagx)
	{
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 77FBBB57
		/// @DnDComment : Remove this action if you do not want to see$(13_10)touch controls when uploaded to Opera GX$(13_10)
		/// @DnDParent : 64710273
		/// @DnDArgument : "var" ""
		/// @DnDArgument : "sequenceid" "seq_touch_controls"
		/// @DnDArgument : "layer" ""TouchControlsLayer""
		/// @DnDSaveInfo : "sequenceid" "seq_touch_controls"
		layer_sequence_create("TouchControlsLayer", 0, 0, seq_touch_controls);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E659180
	/// @DnDComment : If the game is running on Android, it creates$(13_10)the touch controls sequence$(13_10)
	/// @DnDParent : 1E891129
	/// @DnDArgument : "var" "os_type"
	/// @DnDArgument : "value" "os_android"
	if(os_type == os_android)
	{
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 5B86B735
		/// @DnDParent : 1E659180
		/// @DnDArgument : "var" ""
		/// @DnDArgument : "sequenceid" "seq_touch_controls"
		/// @DnDArgument : "layer" ""TouchControlsLayer""
		/// @DnDSaveInfo : "sequenceid" "seq_touch_controls"
		layer_sequence_create("TouchControlsLayer", 0, 0, seq_touch_controls);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EECDCDE
	/// @DnDComment : If the game is running on iOS, it creates$(13_10)the touch controls sequence$(13_10)
	/// @DnDParent : 1E891129
	/// @DnDArgument : "var" "os_type"
	/// @DnDArgument : "value" "os_ios"
	if(os_type == os_ios)
	{
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 752F13C0
		/// @DnDParent : 0EECDCDE
		/// @DnDArgument : "var" ""
		/// @DnDArgument : "sequenceid" "seq_touch_controls"
		/// @DnDArgument : "layer" ""TouchControlsLayer""
		/// @DnDSaveInfo : "sequenceid" "seq_touch_controls"
		layer_sequence_create("TouchControlsLayer", 0, 0, seq_touch_controls);
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 66420604
/// @DnDComment : If the "EffectLeaf" layer exists,
/// @DnDArgument : "expr" "layer_exists("EffectLeaf")"
if(layer_exists("EffectLeaf"))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74DFFD7F
	/// @DnDComment : Get the leaf effect FX struct
	/// @DnDParent : 66420604
	/// @DnDArgument : "expr" "layer_get_fx("EffectLeaf")"
	/// @DnDArgument : "var" "effect_leaf"
	effect_leaf = layer_get_fx("EffectLeaf");

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 54B5B227
	/// @DnDComment : Get the number of leaves
	/// @DnDInput : 2
	/// @DnDParent : 66420604
	/// @DnDArgument : "var" "leaf_count"
	/// @DnDArgument : "function" "fx_get_parameter"
	/// @DnDArgument : "arg" "effect_leaf"
	/// @DnDArgument : "arg_1" ""param_num_particles""
	leaf_count = fx_get_parameter(effect_leaf, "param_num_particles");
}