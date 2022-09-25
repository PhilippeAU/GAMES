/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 0E4A348C
/// @DnDComment : This for loop runs for each touch, and checks$(13_10)a maximum of 10 simultaneous touches$(13_10)$(13_10)Each "device" is a touch, which is used in$(13_10)device_* functions below to detect the position$(13_10)and state of that touch (pressed/released)$(13_10)
/// @DnDArgument : "init" "device = 0"
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "device < 10"
/// @DnDArgument : "expr" "device ++"
for(var device = 0; device < 10; device ++) {
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 70A0BA32
	/// @DnDComment : Here we're getting the X position$(13_10)of the touch on the GUI layer.$(13_10)$(13_10)The Draw GUI event is used to draw$(13_10)the button, which is a separate layer$(13_10)on top of the game. So input for these$(13_10)buttons must also be taken on the GUI layer.$(13_10)
	/// @DnDParent : 0E4A348C
	/// @DnDArgument : "var" "mouse_gui_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "device_mouse_x_to_gui"
	/// @DnDArgument : "arg" "device"
	var mouse_gui_x = device_mouse_x_to_gui(device);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 685A87F8
	/// @DnDComment : Here we get the Y touch position on GUI.
	/// @DnDParent : 0E4A348C
	/// @DnDArgument : "var" "mouse_gui_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "device_mouse_y_to_gui"
	/// @DnDArgument : "arg" "device"
	var mouse_gui_y = device_mouse_y_to_gui(device);

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 749797B5
	/// @DnDComment : Check if the mouse point is$(13_10)colliding with this instance$(13_10)(using 'self').$(13_10)$(13_10)This means the mouse is hovering$(13_10)on the button.$(13_10)
	/// @DnDParent : 0E4A348C
	/// @DnDArgument : "x" "mouse_gui_x"
	/// @DnDArgument : "y" "mouse_gui_y"
	/// @DnDArgument : "obj" "self"
	/// @DnDArgument : "notme" "0"
	var l749797B5_0 = collision_point(mouse_gui_x, mouse_gui_y, self, true, 0);
	if((l749797B5_0))
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1B9518DF
		/// @DnDComment : This checks if the touch is active$(13_10)(being held down)$(13_10)
		/// @DnDInput : 2
		/// @DnDParent : 749797B5
		/// @DnDArgument : "var" "touching"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "device_mouse_check_button"
		/// @DnDArgument : "arg" "device"
		/// @DnDArgument : "arg_1" "mb_left"
		var touching = device_mouse_check_button(device, mb_left);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 26747D90
		/// @DnDComment : If it is touching,
		/// @DnDParent : 749797B5
		/// @DnDArgument : "expr" "touching"
		if(touching)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 32438B4E
			/// @DnDComment : Switch to frame 1
			/// @DnDParent : 26747D90
			/// @DnDArgument : "imageind" "1"
			/// @DnDArgument : "spriteind" "sprite_index"
			sprite_index = sprite_index;
			image_index = 1;
		
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 44D539FD
			/// @DnDComment : Run User Event 0
			/// @DnDParent : 26747D90
			event_user(0);
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 244D35CA
			/// @DnDComment : Stop the loop so the button doesn't look for additional touches
			/// @DnDParent : 26747D90
			break;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5016ACFF
		/// @DnDComment : Otherwise, use frame 0
		/// @DnDParent : 749797B5
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 18AE8912
			/// @DnDParent : 5016ACFF
			/// @DnDArgument : "spriteind" "sprite_index"
			sprite_index = sprite_index;
			image_index = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6824FDAC
	/// @DnDComment : Otherwise, use frame 0
	/// @DnDParent : 0E4A348C
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 662FEC65
		/// @DnDParent : 6824FDAC
		/// @DnDArgument : "spriteind" "sprite_index"
		sprite_index = sprite_index;
		image_index = 0;
	}
}