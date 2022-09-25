/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22A1A5AF
/// @DnDArgument : "var" "os_browser"
/// @DnDArgument : "value" "browser_not_a_browser"
if(os_browser == browser_not_a_browser)
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 380BEB95
	/// @DnDParent : 22A1A5AF
	event_user(0);
}