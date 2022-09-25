/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4A766E7B
/// @DnDApplyTo : embers[ember_current]
with(embers[ember_current]) {
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 43114F02
	/// @DnDComment : These actions apply to the current$(13_10)ember in the pool, taken from the$(13_10)embers array using the ember_current$(13_10)index variable$(13_10)$(13_10)Its X position is randomized,$(13_10)Y position is reset and$(13_10)User Event 0 is called, which sets$(13_10)it moving$(13_10)$(13_10)See obj_ember's User Event 0 for$(13_10)more info
	/// @DnDParent : 4A766E7B
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "other.spawn_area_x"
	/// @DnDArgument : "max" "other.spawn_area_x + other.spawn_area_width"
	x = floor(random_range(other.spawn_area_x, other.spawn_area_x + other.spawn_area_width + 1));

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1AAECA91
	/// @DnDParent : 4A766E7B
	/// @DnDArgument : "value" "-50"
	/// @DnDArgument : "instvar" "1"
	y = -50;

	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 63AE6C79
	/// @DnDParent : 4A766E7B
	event_user(0);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C91C1E3
/// @DnDComment : Increase ember_current value so$(13_10)the next ember in the pool is$(13_10)used
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "ember_current"
ember_current += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73B782C8
/// @DnDComment : If we are at the limit$(13_10)of the pool, go back to$(13_10)0$(13_10)$(13_10)This way we keep recycling$(13_10)the same instances instead$(13_10)of creating new ones
/// @DnDArgument : "var" "ember_current"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "ember_count"
if(ember_current >= ember_count)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33AC138C
	/// @DnDParent : 73B782C8
	/// @DnDArgument : "var" "ember_current"
	ember_current = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2DAB2F3D
/// @DnDComment : Run alarm again after 10 steps$(13_10)This is the frequency of the $(13_10)embers
/// @DnDArgument : "steps" "10"
alarm_set(0, 10);