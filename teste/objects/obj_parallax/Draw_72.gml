/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 04E07605
/// @DnDComment : Hi! This object, in this event, handles parallax.$(13_10)$(13_10)It's done in Draw Begin as that's when the camera$(13_10)position is updated. This way our parallax remains$(13_10)up to speed with the camera (and does not lag behind).$(13_10)$(13_10)The camera_get_view_x function gets the X position$(13_10)of the camera. We specify the view_camera[0] as its argument$(13_10)(which is our first and only camera).$(13_10)$(13_10)The position of the camera is stored in a temporary$(13_10)variable called 'camera_x'.
/// @DnDArgument : "var" "camera_x"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "camera_get_view_x"
/// @DnDArgument : "arg" "view_camera[0]"
var camera_x = camera_get_view_x(view_camera[0]);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 572E59F5
/// @DnDComment : We then run the layer_x function to change the X position$(13_10)of a layer.$(13_10)$(13_10)The layer is "Back_Trees2" and its position is 60% of the camera's$(13_10)X position (camera_x * 0.6).$(13_10)$(13_10)The higher this multiplier is, the "further" the layer appears,$(13_10)as it moves less as compared to the camera.
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Back_Trees2""
/// @DnDArgument : "arg_1" "camera_x * 0.6"
layer_x("Back_Trees2", camera_x * 0.6);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 78C25B76
/// @DnDComment : The "Back_Trees1" layer is positioned at camera_x * 0.7.
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Back_Trees1""
/// @DnDArgument : "arg_1" "camera_x * 0.7"
layer_x("Back_Trees1", camera_x * 0.7);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 20A22ED4
/// @DnDComment : The "Back_Clouds" layer is positioned at camera_x * 0.8.
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_x"
/// @DnDArgument : "arg" ""Back_Clouds""
/// @DnDArgument : "arg_1" "camera_x * 0.8"
layer_x("Back_Clouds", camera_x * 0.8);