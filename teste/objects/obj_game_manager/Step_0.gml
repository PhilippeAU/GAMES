/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 58323ADF
/// @DnDComment : If the "EffectLeaf" layer exists,
/// @DnDArgument : "expr" "layer_exists("EffectLeaf")"
if(layer_exists("EffectLeaf"))
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0693C314
	/// @DnDComment : If the player exists,
	/// @DnDParent : 58323ADF
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l0693C314_0 = false;
	l0693C314_0 = instance_exists(obj_player);
	if(l0693C314_0)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 3A169838
		/// @DnDComment : If the player is colliding with a $(13_10)"stop leaf effect" instance,
		/// @DnDApplyTo : {obj_player}
		/// @DnDParent : 0693C314
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_stop_leaf_effect"
		/// @DnDSaveInfo : "object" "obj_stop_leaf_effect"
		with(obj_player) {
		var l3A169838_0 = instance_place(x + 0, y + 0, obj_stop_leaf_effect);
		}
		if ((l3A169838_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 31686732
			/// @DnDComment : Set leaf particle count to 0
			/// @DnDInput : 3
			/// @DnDParent : 3A169838
			/// @DnDArgument : "function" "fx_set_parameter"
			/// @DnDArgument : "arg" "effect_leaf"
			/// @DnDArgument : "arg_1" ""param_num_particles""
			/// @DnDArgument : "arg_2" "0"
			fx_set_parameter(effect_leaf, "param_num_particles", 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 799E3790
			/// @DnDComment : Set in_cave to true for ambient audio
			/// @DnDParent : 3A169838
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "in_cave"
			in_cave = true;
		
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 6F653C51
			/// @DnDComment : Call User Event 0 which switches ambient$(13_10)audio depending on in_cave
			/// @DnDParent : 3A169838
			event_user(0);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2AFE514B
		/// @DnDComment : Otherwise,
		/// @DnDParent : 0693C314
		else
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 6C718C6F
			/// @DnDComment : Restore leaf count
			/// @DnDInput : 3
			/// @DnDParent : 2AFE514B
			/// @DnDArgument : "function" "fx_set_parameter"
			/// @DnDArgument : "arg" "effect_leaf"
			/// @DnDArgument : "arg_1" ""param_num_particles""
			/// @DnDArgument : "arg_2" "leaf_count"
			fx_set_parameter(effect_leaf, "param_num_particles", leaf_count);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1FA1CDAA
			/// @DnDComment : Set in_cave to false for ambient audio
			/// @DnDParent : 2AFE514B
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "in_cave"
			in_cave = false;
		
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 5D78AE11
			/// @DnDComment : Call User Event 0 which switches ambient$(13_10)audio depending on in_cave
			/// @DnDParent : 2AFE514B
			event_user(0);
		}
	}
}