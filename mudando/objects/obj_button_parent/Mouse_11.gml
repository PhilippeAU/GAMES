/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F6787E1
/// @DnDArgument : "var" "os_browser"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "browser_not_a_browser"
if(!(os_browser == browser_not_a_browser))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 0F45AAFB
	/// @DnDParent : 3F6787E1
	exit;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5939665D
/// @DnDComment : Removing mouse hover$(13_10)changes frame
/// @DnDArgument : "spriteind" "spr_button"
/// @DnDSaveInfo : "spriteind" "spr_button"
sprite_index = spr_button;
image_index = 0;