/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 09288931
event_inherited();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 48BB82E7
/// @DnDComment : This action applies to obj_game_manager.$(13_10)$(13_10)It runs the Key Press - Escape event in it, which$(13_10)pauses/resumes the game.
/// @DnDInput : 2
/// @DnDApplyTo : obj_game_manager
/// @DnDArgument : "function" "event_perform"
/// @DnDArgument : "arg" "ev_keypress"
/// @DnDArgument : "arg_1" "vk_escape"
with(obj_game_manager) {
	event_perform(ev_keypress, vk_escape);
}