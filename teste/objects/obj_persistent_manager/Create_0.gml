/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 336D0FB9
/// @DnDComment : Create a global particle system$(13_10)that is persistent, so it can be$(13_10)used throughout the game
/// @DnDArgument : "var" "global.part_system"
/// @DnDArgument : "persist" "1"
global.part_system = part_system_create_layer("Instances", 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 244DF4E2
/// @DnDComment : If the game is running on a browser,$(13_10)it changes the window and application surface$(13_10)size to fit the browser area. It uses the height$(13_10)to ensure the aspect ratio stays the same.$(13_10)
/// @DnDArgument : "var" "os_browser"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "browser_not_a_browser"
if(!(os_browser == browser_not_a_browser))
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64C03AC0
	/// @DnDParent : 244DF4E2
	/// @DnDArgument : "var" "aspect"
	/// @DnDArgument : "value" "1920/1080"
	var aspect = 1920/1080;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 50D48984
	/// @DnDInput : 2
	/// @DnDParent : 244DF4E2
	/// @DnDArgument : "function" "window_set_size"
	/// @DnDArgument : "arg" "display_get_height() * aspect"
	/// @DnDArgument : "arg_1" "display_get_height()"
	window_set_size(display_get_height() * aspect, display_get_height());

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 23A20E7B
	/// @DnDInput : 3
	/// @DnDParent : 244DF4E2
	/// @DnDArgument : "function" "surface_resize"
	/// @DnDArgument : "arg" "application_surface"
	/// @DnDArgument : "arg_1" "display_get_height() * aspect"
	/// @DnDArgument : "arg_2" "display_get_height()"
	surface_resize(application_surface, display_get_height() * aspect, display_get_height());

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6E0EF7DE
	/// @DnDInput : 2
	/// @DnDParent : 244DF4E2
	/// @DnDArgument : "function" "display_set_gui_size"
	/// @DnDArgument : "arg" "1920"
	/// @DnDArgument : "arg_1" "1080"
	display_set_gui_size(1920, 1080);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 14F19D94
/// @DnDComment : Play music track with looping enabled
/// @DnDArgument : "soundid" "snd_music_level"
/// @DnDArgument : "loop" "1"
audio_play_sound(snd_music_level, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 64F04A9E
/// @DnDComment : Set the falloff model used for all audio emitters,$(13_10)like in obj_end_gate
/// @DnDArgument : "function" "audio_falloff_set_model"
/// @DnDArgument : "arg" "audio_falloff_linear_distance_clamped"
audio_falloff_set_model(audio_falloff_linear_distance_clamped);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 25C1B43B
/// @DnDComment : Set listener orientation for proper 3D audio
/// @DnDInput : 6
/// @DnDArgument : "function" "audio_listener_orientation"
/// @DnDArgument : "arg" "0"
/// @DnDArgument : "arg_1" "0"
/// @DnDArgument : "arg_2" "1000"
/// @DnDArgument : "arg_3" "0"
/// @DnDArgument : "arg_4" "-1"
/// @DnDArgument : "arg_5" "0"
audio_listener_orientation(0, 0, 1000, 0, -1, 0);