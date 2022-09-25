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
/// @DnDComment : Draw the coin HUD object itself
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 76C05AD2
/// @DnDComment : This font will now be used for drawing text
/// @DnDArgument : "font" "ft_hud"
draw_set_font(ft_hud);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 73CC0C07
/// @DnDComment : Draw the player's coins value to the right of$(13_10)this instance
/// @DnDArgument : "x" "54"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""x""
/// @DnDArgument : "var" "obj_player.coins"
draw_text(x + 54, y + 0, string("x") + string(obj_player.coins));