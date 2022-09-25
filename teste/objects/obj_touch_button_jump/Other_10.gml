/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3670B98D
event_inherited();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7ED2F150
/// @DnDComment : This action applies to obj_player.$(13_10)$(13_10)It runs the Key Press - Space event in it, causing the$(13_10)player to jump.
/// @DnDInput : 2
/// @DnDApplyTo : {obj_player}
/// @DnDArgument : "function" "event_perform"
/// @DnDArgument : "arg" "ev_keypress"
/// @DnDArgument : "arg_1" "vk_space"
with(obj_player) {
	event_perform(ev_keypress, vk_space);
}