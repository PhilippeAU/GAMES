/// @DnDAction : YoYo Games.Data Structures.DS_Free
/// @DnDVersion : 1
/// @DnDHash : 194993DF
/// @DnDComment : Any data structures created (lists, maps, grids, etc.) MUST be$(13_10)destroyed when they're no longer needed.$(13_10)$(13_10)So in this Clean Up event (which runs when the instance is$(13_10)destroyed, or the room or game ends) we're destroying our$(13_10)'gamepads' list, as it's no longer needed.
/// @DnDArgument : "var" "gamepads"
ds_list_destroy(gamepads);