/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 217E4CBE
/// @DnDComment : This event makes the player jump$(13_10)and enables gravity.$(13_10)$(13_10)It also initializes the player's$(13_10)rescue and height scores as global$(13_10)variables.
/// @DnDArgument : "speed" "-35"
/// @DnDArgument : "type" "2"
vspeed = -35;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 3C3CF009
/// @DnDArgument : "force" "0.8"
gravity = 0.8;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7047A25D
/// @DnDInput : 2
/// @DnDArgument : "var" "score_rescue"
/// @DnDArgument : "var_1" "score_height"
global.score_rescue = 0;
global.score_height = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0E859B2B
/// @DnDComment : Horizontal movement speed$(13_10)$(13_10)Used by events for Left, Right,$(13_10)A & D keys$(13_10)$(13_10)Left & A are the same, and$(13_10)Right & D are the same
/// @DnDArgument : "expr" "12"
/// @DnDArgument : "var" "move_speed"
move_speed = 12;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FD7CE26
/// @DnDComment : Target position on x axis$(13_10)where this instance needs to$(13_10)move$(13_10)$(13_10)Used to smoothen horizontal$(13_10)movement
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "var" "target_x"
target_x = x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26CDCB8E
/// @DnDComment : Whether the player is currently$(13_10)wrapping the screen horizontally
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "wrapping"
wrapping = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 290A9727
/// @DnDComment : How much margin the player$(13_10)has horizontally to wrap on$(13_10)the sides of the screen
/// @DnDArgument : "expr" "70"
/// @DnDArgument : "var" "wrap_margin"
wrap_margin = 70;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06CB2E89
/// @DnDArgument : "var" "global.char"
if(global.char == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75395671
	/// @DnDComment : Initialize sprites for the first character [0]
	/// @DnDInput : 6
	/// @DnDParent : 06CB2E89
	/// @DnDArgument : "expr" "spr_player_1_air"
	/// @DnDArgument : "expr_1" "spr_player_1_defeated"
	/// @DnDArgument : "expr_2" "spr_player_1_fall"
	/// @DnDArgument : "expr_3" "spr_player_1_jump"
	/// @DnDArgument : "expr_4" "spr_player_1_air_to_fall"
	/// @DnDArgument : "expr_5" "spr_player_1_jump_to_air"
	/// @DnDArgument : "var" "sprite_air"
	/// @DnDArgument : "var_1" "sprite_defeated"
	/// @DnDArgument : "var_2" "sprite_fall"
	/// @DnDArgument : "var_3" "sprite_jump"
	/// @DnDArgument : "var_4" "sprite_air_to_fall"
	/// @DnDArgument : "var_5" "sprite_jump_to_air"
	sprite_air = spr_player_1_air;
	sprite_defeated = spr_player_1_defeated;
	sprite_fall = spr_player_1_fall;
	sprite_jump = spr_player_1_jump;
	sprite_air_to_fall = spr_player_1_air_to_fall;
	sprite_jump_to_air = spr_player_1_jump_to_air;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7AB620F6
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2ED64799
	/// @DnDParent : 7AB620F6
	/// @DnDArgument : "var" "global.char"
	/// @DnDArgument : "value" "1"
	if(global.char == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 416BC136
		/// @DnDComment : Initialize sprites for the second character [1]
		/// @DnDInput : 6
		/// @DnDParent : 2ED64799
		/// @DnDArgument : "expr" "spr_player_2_air"
		/// @DnDArgument : "expr_1" "spr_player_2_defeated"
		/// @DnDArgument : "expr_2" "spr_player_2_fall"
		/// @DnDArgument : "expr_3" "spr_player_2_jump"
		/// @DnDArgument : "expr_4" "spr_player_2_air_to_fall"
		/// @DnDArgument : "expr_5" "spr_player_2_jump_to_air"
		/// @DnDArgument : "var" "sprite_air"
		/// @DnDArgument : "var_1" "sprite_defeated"
		/// @DnDArgument : "var_2" "sprite_fall"
		/// @DnDArgument : "var_3" "sprite_jump"
		/// @DnDArgument : "var_4" "sprite_air_to_fall"
		/// @DnDArgument : "var_5" "sprite_jump_to_air"
		sprite_air = spr_player_2_air;
		sprite_defeated = spr_player_2_defeated;
		sprite_fall = spr_player_2_fall;
		sprite_jump = spr_player_2_jump;
		sprite_air_to_fall = spr_player_2_air_to_fall;
		sprite_jump_to_air = spr_player_2_jump_to_air;
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1C611E9A
/// @DnDComment : Start with the "in-air" sprite of the selected character
/// @DnDArgument : "spriteind" "sprite_air"
sprite_index = sprite_air;
image_index = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 116D7F4D
/// @DnDComment : Touch input for the X axis
/// @DnDArgument : "var" "touch_input_x"
touch_input_x = 0;