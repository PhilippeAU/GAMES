/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7642FAF9
/// @DnDComment : This object manages falling$(13_10)ember instances$(13_10)$(13_10)It uses a 'pooling' system$(13_10)where it has a fixed amount$(13_10)of instances pre-created$(13_10)and they are recycled$(13_10)$(13_10)ember_count is the number$(13_10)of ember instances in the$(13_10)pool$(13_10)$(13_10)ember_current is used in$(13_10)Alarm 0 to tell which ember$(13_10)instance is being used from$(13_10)the pool
/// @DnDInput : 4
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "expr_1" "room_width * 2"
/// @DnDArgument : "expr_2" "room_width - spawn_area_width"
/// @DnDArgument : "var" "ember_count"
/// @DnDArgument : "var_1" "spawn_area_width"
/// @DnDArgument : "var_2" "spawn_area_x"
/// @DnDArgument : "var_3" "ember_current"
ember_count = 100;
spawn_area_width = room_width * 2;
spawn_area_x = room_width - spawn_area_width;
ember_current = 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 57929439
/// @DnDComment : Temporary variable used$(13_10)in the repeat loop below
/// @DnDArgument : "var" "ember_number"
/// @DnDArgument : "value" "0"
var ember_number = 0;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 37A6E477
/// @DnDComment : This creates the ember instances$(13_10)for the pool by repeating the same$(13_10)actions for each ember (so it's$(13_10)based on ember_count)
/// @DnDArgument : "times" "ember_count"
repeat(ember_count)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6C67AD93
	/// @DnDComment : Spawn ember instances at a random x$(13_10)at -50 y above the room$(13_10)$(13_10)Store ID in an array called embers
	/// @DnDParent : 37A6E477
	/// @DnDArgument : "var" "spawn_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "spawn_area_x"
	/// @DnDArgument : "max" "spawn_area_x + spawn_area_width"
	var spawn_x = floor(random_range(spawn_area_x, spawn_area_x + spawn_area_width + 1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 303C4EDD
	/// @DnDParent : 37A6E477
	/// @DnDArgument : "xpos" "spawn_x"
	/// @DnDArgument : "ypos" "-50"
	/// @DnDArgument : "var" "embers[ember_number]"
	/// @DnDArgument : "objectid" "obj_ember"
	/// @DnDArgument : "layer" "layer"
	/// @DnDSaveInfo : "objectid" "obj_ember"
	embers[ember_number] = instance_create_layer(spawn_x, -50, layer, obj_ember);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B1BC6EE
	/// @DnDParent : 37A6E477
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ember_number"
	ember_number += 1;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 05A36782
/// @DnDComment : Looping alarm for spawning embers
/// @DnDArgument : "steps" "10"
alarm_set(0, 10);