/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 6C1198A1
event_inherited();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 76B7240C
/// @DnDComment : This action applies to obj_player (click on the arrow$(13_10)next to X to check).$(13_10)$(13_10)It runs the Key Down - Left event in it, causing the$(13_10)player to move left.
/// @DnDInput : 2
/// @DnDApplyTo : {obj_player}
/// @DnDArgument : "function" "event_perform"
/// @DnDArgument : "arg" "ev_keyboard"
/// @DnDArgument : "arg_1" "vk_left"
with(obj_player) {
	event_perform(ev_keyboard, vk_left);
}