/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 55843323
/// @DnDComment : Here we're getting the X position$(13_10)of the mouse on the GUI layer.$(13_10)$(13_10)The Draw GUI event is used to draw$(13_10)the button, which is a separate layer$(13_10)on top of the game. So input for these$(13_10)buttons must also be taken on the GUI layer.
/// @DnDArgument : "var" "mouse_gui_x"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "device_mouse_x_to_gui"
/// @DnDArgument : "arg" "0"
var mouse_gui_x = device_mouse_x_to_gui(0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0C3A2B01
/// @DnDComment : Get the Y position of the mouse$(13_10)on the GUI layer
/// @DnDArgument : "var" "mouse_gui_y"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "device_mouse_y_to_gui"
/// @DnDArgument : "arg" "0"
var mouse_gui_y = device_mouse_y_to_gui(0);

/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 529DFF08
/// @DnDComment : Check if the mouse point is$(13_10)colliding with this instance$(13_10)(using 'self').$(13_10)$(13_10)This means the mouse is hovering$(13_10)on the button.
/// @DnDArgument : "x" "mouse_gui_x"
/// @DnDArgument : "y" "mouse_gui_y"
/// @DnDArgument : "obj" "self"
/// @DnDArgument : "notme" "0"
var l529DFF08_0 = collision_point(mouse_gui_x, mouse_gui_y, self, true, 0);
if((l529DFF08_0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1AE24B12
	/// @DnDComment : If it is, change the frame to$(13_10)the hover frame (1) but keep$(13_10)the current sprite (sprite_index)
	/// @DnDParent : 529DFF08
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 1;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 2D08AF14
	/// @DnDComment : If the left mouse button is pressed,
	/// @DnDParent : 529DFF08
	var l2D08AF14_0;
	l2D08AF14_0 = mouse_check_button_pressed(mb_left);
	if (l2D08AF14_0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 46303951
		/// @DnDComment : Reduce the scale of the instance$(13_10)so it appears smaller while it's$(13_10)pressed$(13_10)
		/// @DnDParent : 2D08AF14
		/// @DnDArgument : "xscale" "0.9"
		/// @DnDArgument : "yscale" "0.9"
		image_xscale = 0.9;
		image_yscale = 0.9;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
	/// @DnDVersion : 1.1
	/// @DnDHash : 7F7883F8
	/// @DnDComment : If the left mouse button is released$(13_10)(which is when we register a click),
	/// @DnDParent : 529DFF08
	var l7F7883F8_0;
	l7F7883F8_0 = mouse_check_button_released(mb_left);
	if (l7F7883F8_0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 266B6C12
		/// @DnDComment : Change the frame to$(13_10)the idle frame (0)
		/// @DnDParent : 7F7883F8
		/// @DnDArgument : "spriteind" "sprite_index"
		sprite_index = sprite_index;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 1A6DE452
		/// @DnDComment : Call User Event 0 where the$(13_10)button performs its actions
		/// @DnDParent : 7F7883F8
		event_user(0);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 45C441CA
		/// @DnDComment : Reset the scale so the button$(13_10)appears at its normal size$(13_10)
		/// @DnDParent : 7F7883F8
		image_xscale = 1;
		image_yscale = 1;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 6C085C87
		/// @DnDComment : Play the button press sound effect
		/// @DnDParent : 7F7883F8
		/// @DnDArgument : "soundid" "snd_button_press_01"
		/// @DnDSaveInfo : "soundid" "snd_button_press_01"
		audio_play_sound(snd_button_press_01, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3F937AB6
/// @DnDComment : If the mouse is not hovering,
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 68AFEC47
	/// @DnDComment : Change the frame to$(13_10)the idle frame (0)
	/// @DnDParent : 3F937AB6
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 062AEC8E
	/// @DnDComment : Reset the scale so the button$(13_10)appears at its normal size$(13_10)
	/// @DnDParent : 3F937AB6
	image_xscale = 1;
	image_yscale = 1;
}