/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 08125980
/// @DnDComment : Data in this event is provided in the 'async_load' map.$(13_10)$(13_10)In this action we're getting the "event_type" key,$(13_10)which tells us whether a gamepad was discovered, or$(13_10)a gamepad was lost (disconnected).$(13_10)$(13_10)The value for the "event_type" is stored in a temporary$(13_10)variable called 'event'.
/// @DnDArgument : "assignee" "event"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "async_load"
/// @DnDArgument : "key" ""event_type""
var event = ds_map_find_value(async_load, "event_type");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A23F2A9
/// @DnDComment : This condition checks if the event was "gamepad discovered",$(13_10)in which case we want to get the gamepad's ID, and add it to$(13_10)our list.$(13_10)$(13_10)The first controller in the list will be the one used for all$(13_10)input (see the Begin Step event).
/// @DnDArgument : "var" "event"
/// @DnDArgument : "value" ""gamepad discovered""
if(event == "gamepad discovered")
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1832DB3A
	/// @DnDComment : Here we're getting the ID (index) of the gamepad$(13_10)that was connected.
	/// @DnDParent : 5A23F2A9
	/// @DnDArgument : "assignee" "new_gamepad_id"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "async_load"
	/// @DnDArgument : "key" ""pad_index""
	var new_gamepad_id = ds_map_find_value(async_load, "pad_index");

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 0D9A01EB
	/// @DnDComment : Here we're adding that gamepad to our 'gamepads'$(13_10)list.
	/// @DnDParent : 5A23F2A9
	/// @DnDArgument : "var" "gamepads"
	/// @DnDArgument : "value" "new_gamepad_id"
	ds_list_add(gamepads, new_gamepad_id);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 433B49DF
/// @DnDComment : The "gamepad lost" event runs when a gamepad is disconnected.$(13_10)In that case, we want to remove it from the 'gamepads' list.
/// @DnDArgument : "var" "event"
/// @DnDArgument : "value" ""gamepad lost""
if(event == "gamepad lost")
{
	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1FFACA05
	/// @DnDComment : We first get the ID of the gamepad that was lost.
	/// @DnDParent : 433B49DF
	/// @DnDArgument : "assignee" "lost_gamepad_id"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "async_load"
	/// @DnDArgument : "key" ""pad_index""
	var lost_gamepad_id = ds_map_find_value(async_load, "pad_index");

	/// @DnDAction : YoYo Games.Data Structures.List_IndexOf
	/// @DnDVersion : 1
	/// @DnDHash : 42D648C4
	/// @DnDComment : Then we find the index of the gamepad stored$(13_10)within the 'gamepads' list. That index refers$(13_10)to its position in the list (0, 1, 2, etc.)$(13_10)so that particular position can be deleted$(13_10)from the list.
	/// @DnDParent : 433B49DF
	/// @DnDArgument : "assignee" "index_to_remove"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "gamepads"
	/// @DnDArgument : "value" "lost_gamepad_id"
	var index_to_remove = ds_list_find_index(gamepads, lost_gamepad_id);

	/// @DnDAction : YoYo Games.Data Structures.List_Remove
	/// @DnDVersion : 1
	/// @DnDHash : 0A2120FB
	/// @DnDComment : That position is then removed from the list,$(13_10)so the gamepad is not registered anymore.
	/// @DnDParent : 433B49DF
	/// @DnDArgument : "var" "gamepads"
	/// @DnDArgument : "index" "index_to_remove"
	if(ds_list_size(gamepads) > index_to_remove)
		ds_list_delete(gamepads, index_to_remove);
}