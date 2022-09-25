/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DB5B0EB
/// @DnDComment : This gets the absolute difference between the$(13_10)fake_y and the target_y, which gets the distance$(13_10)between the two coordinates
/// @DnDArgument : "var" "target_y_dist"
/// @DnDArgument : "value" "abs(target_y - fake_y)"
var target_y_dist = abs(target_y - fake_y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51AFF8BD
/// @DnDComment : If that distance is greater than 2,
/// @DnDArgument : "var" "target_y_dist"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "2"
if(target_y_dist > 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DAB1A4F
	/// @DnDComment : This moves the fake_y position towards$(13_10)the target_y, by getting the sign between them.$(13_10)The value is multiplied by 8, which becomes its$(13_10)speed (8 pixels per second).
	/// @DnDParent : 51AFF8BD
	/// @DnDArgument : "expr" "sign(target_y - fake_y) * 8"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "fake_y"
	fake_y += sign(target_y - fake_y) * 8;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3665E27A
/// @DnDComment : If the distance is not above 2,
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D543CFD
	/// @DnDComment : Set the fake__y to be equal to the target_y,$(13_10)so it's at that exact Y position
	/// @DnDParent : 3665E27A
	/// @DnDArgument : "expr" "target_y"
	/// @DnDArgument : "var" "fake_y"
	fake_y = target_y;
}