/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 308765A6
/// @DnDComment : Run the Key Press - Escape key$(13_10)event in obj_game_manager so$(13_10)it resumes the game
/// @DnDInput : 2
/// @DnDApplyTo : {obj_game_manager}
/// @DnDArgument : "function" "event_perform"
/// @DnDArgument : "arg" "ev_keypress"
/// @DnDArgument : "arg_1" "vk_escape"
with(obj_game_manager) {
	event_perform(ev_keypress, vk_escape);
}