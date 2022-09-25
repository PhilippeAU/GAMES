/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 38AA7A5D
/// @DnDComment : If the player instance does not exist,
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
var l38AA7A5D_0 = false;
l38AA7A5D_0 = instance_exists(obj_player);
if(!l38AA7A5D_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 0EB58567
	/// @DnDComment : Exit the event so it does not run
	/// @DnDParent : 38AA7A5D
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4C46387A
/// @DnDComment : Draw the object itself. It's drawn in Draw GUI Begin$(13_10)so it appears behind other HUD elements, which are$(13_10)drawn in Draw GUI.$(13_10)
draw_self();