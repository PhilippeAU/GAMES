/// @DnDAction : YoYo Games.Data Structures.List_Get_At
/// @DnDVersion : 1
/// @DnDHash : 7C0700B8
/// @DnDComment : Here we are getting the first gamepad stored$(13_10)in our 'gamepads' list (at index 0).$(13_10)$(13_10)If there are no gamepads in the list, then the$(13_10)value 'undefined' will be returned.
/// @DnDArgument : "assignee" "gamepad"
/// @DnDArgument : "var" "gamepads"
gamepad = ds_list_find_value(gamepads, 0);

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 697B7589
/// @DnDComment : This condition checks if the gamepad found in the$(13_10)list is NOT undefined, meaning a gamepad was found$(13_10)in the list.$(13_10)$(13_10)We only take input from the gamepad if this is true.
/// @DnDArgument : "var" "gamepad"
/// @DnDArgument : "not" "1"
if(gamepad != undefined)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43062408
	/// @DnDComment : This checks if the room is rm_menu, meaning we're$(13_10)in the main menu.
	/// @DnDParent : 697B7589
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "rm_menu"
	if(room == rm_menu)
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 0A2FC0BD
		/// @DnDComment : This checks if the Start button was$(13_10)pressed on our gamepad.
		/// @DnDParent : 43062408
		/// @DnDArgument : "gp" "gamepad"
		/// @DnDArgument : "btn" "gp_start"
		var l0A2FC0BD_0 = gamepad;
		var l0A2FC0BD_1 = gp_start;
		if(gamepad_is_connected(l0A2FC0BD_0) && gamepad_button_check_pressed(l0A2FC0BD_0, l0A2FC0BD_1))
		{
			/// @DnDAction : YoYo Games.Rooms.Next_Room
			/// @DnDVersion : 1
			/// @DnDHash : 13B9F4CD
			/// @DnDComment : If it was, we move to the$(13_10)next room (starting the game).
			/// @DnDParent : 0A2FC0BD
			room_goto_next();
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CC599C8
	/// @DnDComment : This checks if the room is rm_end, meaning we're$(13_10)on the game over screen.
	/// @DnDParent : 697B7589
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "rm_end"
	if(room == rm_end)
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 744BB4D2
		/// @DnDComment : This checks if the Start button was$(13_10)pressed on our gamepad.
		/// @DnDParent : 2CC599C8
		/// @DnDArgument : "gp" "gamepad"
		/// @DnDArgument : "btn" "gp_start"
		var l744BB4D2_0 = gamepad;
		var l744BB4D2_1 = gp_start;
		if(gamepad_is_connected(l744BB4D2_0) && gamepad_button_check_pressed(l744BB4D2_0, l744BB4D2_1))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 1E5C38DC
			/// @DnDComment : In that case, we go back$(13_10)to the main menu room.
			/// @DnDParent : 744BB4D2
			/// @DnDArgument : "room" "rm_menu"
			/// @DnDSaveInfo : "room" "rm_menu"
			room_goto(rm_menu);
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6917513A
	/// @DnDComment : This checks if the player instance exists, meaning we're in$(13_10)a game level. We're checking for the player instance and not$(13_10)a specific room like previous conditions, because there can$(13_10)be many game levels with different room names.
	/// @DnDParent : 697B7589
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l6917513A_0 = false;
	l6917513A_0 = instance_exists(obj_player);
	if(l6917513A_0)
	{
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
		/// @DnDVersion : 1.1
		/// @DnDHash : 2B099592
		/// @DnDComment : This gets the horizontal input from the left stick on the gamepad,$(13_10)which is used for moving left/right.$(13_10)$(13_10)The input range is from -1 to 1, where <0 is left and >0 is right.$(13_10)However we will use a deadzone of 0.5, so left will be smaller$(13_10)than -0.5 and right will be greater than 0.5.
		/// @DnDParent : 6917513A
		/// @DnDArgument : "var" "left_axis"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "gp" "gamepad"
		var left_axis = gamepad_is_connected(gamepad) ? gamepad_axis_value(gamepad, gp_axislh) : 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05486ED4
		/// @DnDComment : This checks if the left stick input is less than -0.5, meaning$(13_10)we should move the player left.
		/// @DnDParent : 6917513A
		/// @DnDArgument : "var" "left_axis"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "-0.5"
		if(left_axis < -0.5)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 4DCCCA8E
			/// @DnDComment : This action applies to obj_player (click on the arrow$(13_10)next to X to check).$(13_10)$(13_10)It runs the Key Down - Left event in it, causing the$(13_10)player to move left.
			/// @DnDInput : 2
			/// @DnDApplyTo : {obj_player}
			/// @DnDParent : 05486ED4
			/// @DnDArgument : "function" "event_perform"
			/// @DnDArgument : "arg" "ev_keyboard"
			/// @DnDArgument : "arg_1" "vk_left"
			with(obj_player) {
				event_perform(ev_keyboard, vk_left);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 516B7FA6
		/// @DnDComment : This checks if the left stick input is greater than 0.5, meaning$(13_10)we should move the player right.
		/// @DnDParent : 6917513A
		/// @DnDArgument : "var" "left_axis"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "0.5"
		if(left_axis > 0.5)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 59E4701E
			/// @DnDComment : This action applies to obj_player.$(13_10)$(13_10)It runs the Key Down - Right event in it, causing the$(13_10)player to move right.
			/// @DnDInput : 2
			/// @DnDApplyTo : {obj_player}
			/// @DnDParent : 516B7FA6
			/// @DnDArgument : "function" "event_perform"
			/// @DnDArgument : "arg" "ev_keyboard"
			/// @DnDArgument : "arg_1" "vk_right"
			with(obj_player) {
				event_perform(ev_keyboard, vk_right);
			}
		}
	
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
		/// @DnDVersion : 1.1
		/// @DnDHash : 353DE021
		/// @DnDComment : This checks if the left D-PAD button is held.
		/// @DnDParent : 6917513A
		/// @DnDArgument : "gp" "gamepad"
		/// @DnDArgument : "btn" "gp_padl"
		var l353DE021_0 = gamepad;
		var l353DE021_1 = gp_padl;
		if(gamepad_is_connected(l353DE021_0) && (gamepad_button_check(l353DE021_0, l353DE021_1) || gamepad_button_check_released(l353DE021_0, l353DE021_1)))
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 507D837D
			/// @DnDComment : This action applies to obj_player (click on the arrow$(13_10)next to X to check).$(13_10)$(13_10)It runs the Key Down - Left event in it, causing the$(13_10)player to move left.
			/// @DnDInput : 2
			/// @DnDApplyTo : {obj_player}
			/// @DnDParent : 353DE021
			/// @DnDArgument : "function" "event_perform"
			/// @DnDArgument : "arg" "ev_keyboard"
			/// @DnDArgument : "arg_1" "vk_left"
			with(obj_player) {
				event_perform(ev_keyboard, vk_left);
			}
		}
	
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
		/// @DnDVersion : 1.1
		/// @DnDHash : 71AE0BE2
		/// @DnDComment : This checks if the right D-PAD button is held.
		/// @DnDParent : 6917513A
		/// @DnDArgument : "gp" "gamepad"
		/// @DnDArgument : "btn" "gp_padr"
		var l71AE0BE2_0 = gamepad;
		var l71AE0BE2_1 = gp_padr;
		if(gamepad_is_connected(l71AE0BE2_0) && (gamepad_button_check(l71AE0BE2_0, l71AE0BE2_1) || gamepad_button_check_released(l71AE0BE2_0, l71AE0BE2_1)))
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 43AD1209
			/// @DnDComment : This action applies to obj_player (click on the arrow$(13_10)next to X to check).$(13_10)$(13_10)It runs the Key Down - Right event in it, causing the$(13_10)player to move right.
			/// @DnDInput : 2
			/// @DnDApplyTo : {obj_player}
			/// @DnDParent : 71AE0BE2
			/// @DnDArgument : "function" "event_perform"
			/// @DnDArgument : "arg" "ev_keyboard"
			/// @DnDArgument : "arg_1" "vk_right"
			with(obj_player) {
				event_perform(ev_keyboard, vk_right);
			}
		}
	
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 0A274D20
		/// @DnDComment : This checks if the "face1" button on the gamepad is pressed$(13_10)(which is A on Xbox controllers, and the equivalent button$(13_10)on other controllers).$(13_10)$(13_10)This input is used for jumping.
		/// @DnDParent : 6917513A
		/// @DnDArgument : "gp" "gamepad"
		/// @DnDArgument : "btn" "gp_face1"
		var l0A274D20_0 = gamepad;
		var l0A274D20_1 = gp_face1;
		if(gamepad_is_connected(l0A274D20_0) && gamepad_button_check_pressed(l0A274D20_0, l0A274D20_1))
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 24D1E73B
			/// @DnDComment : This action applies to obj_player.$(13_10)$(13_10)It runs the Key Press - Space event in it, causing the$(13_10)player to jump.
			/// @DnDInput : 2
			/// @DnDApplyTo : {obj_player}
			/// @DnDParent : 0A274D20
			/// @DnDArgument : "function" "event_perform"
			/// @DnDArgument : "arg" "ev_keypress"
			/// @DnDArgument : "arg_1" "vk_space"
			with(obj_player) {
				event_perform(ev_keypress, vk_space);
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 21E714B8
	/// @DnDComment : This checks if the game manager instance exists, meaning$(13_10)we're in a game level.$(13_10)$(13_10)We're using this for pausing with a gamepad instead of the$(13_10)obj_player block above, as the player gets deactivated when$(13_10)the game is paused.
	/// @DnDParent : 697B7589
	/// @DnDArgument : "obj" "obj_game_manager"
	/// @DnDSaveInfo : "obj" "obj_game_manager"
	var l21E714B8_0 = false;
	l21E714B8_0 = instance_exists(obj_game_manager);
	if(l21E714B8_0)
	{
		/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 1E126184
		/// @DnDComment : This checks if the Start button was$(13_10)pressed on our gamepad.
		/// @DnDParent : 21E714B8
		/// @DnDArgument : "gp" "gamepad"
		/// @DnDArgument : "btn" "gp_start"
		var l1E126184_0 = gamepad;
		var l1E126184_1 = gp_start;
		if(gamepad_is_connected(l1E126184_0) && gamepad_button_check_pressed(l1E126184_0, l1E126184_1))
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 76DB1CF3
			/// @DnDComment : This action applies to obj_game_manager.$(13_10)$(13_10)It runs the Key Press - Escape event in it, which$(13_10)pauses/resumes the game.
			/// @DnDInput : 2
			/// @DnDApplyTo : obj_game_manager
			/// @DnDParent : 1E126184
			/// @DnDArgument : "function" "event_perform"
			/// @DnDArgument : "arg" "ev_keypress"
			/// @DnDArgument : "arg_1" "vk_escape"
			with(obj_game_manager) {
				event_perform(ev_keypress, vk_escape);
			}
		}
	}
}