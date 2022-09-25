/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 37D0FE15
/// @DnDComment : This calls event_perform to run the$(13_10)Key Down - Left event.$(13_10)$(13_10)Pressing A will mimic the behaviour$(13_10)of the Left key event. This is for players$(13_10)who prefer WASD controls over arrow keys.$(13_10)$(13_10)This way you can make two events perform$(13_10)the same actions.
/// @DnDInput : 2
/// @DnDArgument : "function" "event_perform"
/// @DnDArgument : "arg" "ev_keyboard"
/// @DnDArgument : "arg_1" "vk_left"
event_perform(ev_keyboard, vk_left);