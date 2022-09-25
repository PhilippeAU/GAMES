/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1A4E4393
event_inherited();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 499D39F8
/// @DnDComment : This action applies to obj_player.$(13_10)$(13_10)It runs the Key Down - Right event in it, causing the$(13_10)player to move right.
/// @DnDInput : 2
/// @DnDApplyTo : obj_player
/// @DnDArgument : "function" "event_perform"
/// @DnDArgument : "arg" "ev_keyboard"
/// @DnDArgument : "arg_1" "vk_right"
with(obj_player) {
	event_perform(ev_keyboard, vk_right);
}