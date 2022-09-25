/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61200FE8
/// @DnDArgument : "var" "os_browser"
/// @DnDArgument : "value" "browser_not_a_browser"
if(os_browser == browser_not_a_browser)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 447232EF
	/// @DnDComment : When you press the mouse$(13_10)on this button, only$(13_10)the frame changes$(13_10)$(13_10)Nothing else happens
	/// @DnDParent : 61200FE8
	/// @DnDArgument : "imageind" "2"
	/// @DnDArgument : "spriteind" "spr_button"
	/// @DnDSaveInfo : "spriteind" "spr_button"
	sprite_index = spr_button;
	image_index = 2;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7844639A
else
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 4E5497B1
	/// @DnDParent : 7844639A
	event_user(0);
}