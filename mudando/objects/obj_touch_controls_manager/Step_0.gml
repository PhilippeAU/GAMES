/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 524AC42A
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l524AC42A_0 = false;
l524AC42A_0 = instance_exists(obj_player);
if(!l524AC42A_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 479ACFBB
	/// @DnDParent : 524AC42A
	exit;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 52B5A73D
/// @DnDArgument : "var" "new_mouse_x"
/// @DnDArgument : "function" "device_mouse_x"
/// @DnDArgument : "arg" "0"
new_mouse_x = device_mouse_x(0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 468D5424
/// @DnDArgument : "var" "new_mouse_y"
/// @DnDArgument : "function" "device_mouse_y"
/// @DnDArgument : "arg" "0"
new_mouse_y = device_mouse_y(0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 38EC4805
var l38EC4805_0;
l38EC4805_0 = mouse_check_button_pressed(mb_left);
if (l38EC4805_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BD281AA
	/// @DnDInput : 2
	/// @DnDParent : 38EC4805
	/// @DnDArgument : "expr" "new_mouse_x"
	/// @DnDArgument : "expr_1" "new_mouse_y"
	/// @DnDArgument : "var" "prev_mouse_x"
	/// @DnDArgument : "var_1" "prev_mouse_y"
	prev_mouse_x = new_mouse_x;
	prev_mouse_y = new_mouse_y;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D84A86E
/// @DnDArgument : "expr" "new_mouse_x - prev_mouse_x"
/// @DnDArgument : "var" "delta_mouse_x"
delta_mouse_x = new_mouse_x - prev_mouse_x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 05641DD5
/// @DnDArgument : "expr" "new_mouse_y - prev_mouse_y"
/// @DnDArgument : "var" "delta_mouse_y"
delta_mouse_y = new_mouse_y - prev_mouse_y;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 6D60731D
var l6D60731D_0;
l6D60731D_0 = mouse_check_button_released(mb_left);
if (l6D60731D_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 694CC7CF
	/// @DnDParent : 6D60731D
	/// @DnDArgument : "var" "held_movement"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(held_movement < 10)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 351A923E
		/// @DnDInput : 2
		/// @DnDApplyTo : {obj_player}
		/// @DnDParent : 694CC7CF
		/// @DnDArgument : "function" "event_perform"
		/// @DnDArgument : "arg" "ev_keypress"
		/// @DnDArgument : "arg_1" "vk_space"
		with(obj_player) {
			event_perform(ev_keypress, vk_space);
		}
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 5CCF5A48
var l5CCF5A48_0;
l5CCF5A48_0 = mouse_check_button(mb_left);
if (l5CCF5A48_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39D55835
	/// @DnDParent : 5CCF5A48
	/// @DnDArgument : "var" "abs(delta_mouse_x)"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "2"
	if(abs(delta_mouse_x) > 2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51E0362D
		/// @DnDParent : 39D55835
		/// @DnDArgument : "expr" "delta_mouse_x * 1.5"
		/// @DnDArgument : "var" "obj_player.touch_input_x"
		obj_player.touch_input_x = delta_mouse_x * 1.5;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3756E9B9
		/// @DnDParent : 39D55835
		/// @DnDArgument : "expr" "point_distance(0, 0, delta_mouse_x, delta_mouse_y)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "held_movement"
		held_movement += point_distance(0, 0, delta_mouse_x, delta_mouse_y);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6F5F6C95
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DE59B0C
	/// @DnDParent : 6F5F6C95
	/// @DnDArgument : "var" "held_movement"
	held_movement = 0;
}