/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 729C149B
/// @DnDComment : This creates an instance of$(13_10)obj_end_gate_particles which$(13_10)draws over the end gate itself$(13_10)and displays a particle animation$(13_10)$(13_10)It's created at the same position$(13_10)and on the same layer as the end$(13_10)gate itself$(13_10)
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "particle_instance"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_end_gate_particles"
/// @DnDArgument : "layer" "layer"
/// @DnDSaveInfo : "objectid" "obj_end_gate_particles"
var particle_instance = instance_create_layer(x + 0, y + 0, layer, obj_end_gate_particles);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3A7D3F65
/// @DnDComment : The depth of the particle instance is$(13_10)set to be 10 lower than the end gate's$(13_10)depth, so the particles are drawn above$(13_10)the end gate itself$(13_10)
/// @DnDArgument : "expr" "depth - 10"
/// @DnDArgument : "var" "particle_instance.depth"
particle_instance.depth = depth - 10;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 30DD588C
/// @DnDComment : Create an audio emitter for the end gate's$(13_10)ambient audio
/// @DnDArgument : "var" "emitter"
/// @DnDArgument : "function" "audio_emitter_create"
emitter = audio_emitter_create();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 02EDA833
/// @DnDComment : Set the position of the emitter to the$(13_10)position of the instance
/// @DnDInput : 4
/// @DnDArgument : "function" "audio_emitter_position"
/// @DnDArgument : "arg" "emitter"
/// @DnDArgument : "arg_1" "x"
/// @DnDArgument : "arg_2" "y"
/// @DnDArgument : "arg_3" "0"
audio_emitter_position(emitter, x, y, 0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 48A888F2
/// @DnDComment : Set the falloff settings for the audio$(13_10)emitter
/// @DnDInput : 4
/// @DnDArgument : "function" "audio_emitter_falloff"
/// @DnDArgument : "arg" "emitter"
/// @DnDArgument : "arg_1" "1000"
/// @DnDArgument : "arg_2" "1400"
/// @DnDArgument : "arg_3" "1"
audio_emitter_falloff(emitter, 1000, 1400, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0B651693
/// @DnDComment : Play a looping portal ambience sound on$(13_10)the emitter
/// @DnDInput : 4
/// @DnDArgument : "function" "audio_play_sound_on"
/// @DnDArgument : "arg" "emitter"
/// @DnDArgument : "arg_1" "snd_portal_01"
/// @DnDArgument : "arg_2" "true"
/// @DnDArgument : "arg_3" "1"
audio_play_sound_on(emitter, snd_portal_01, true, 1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2ABA76C9
/// @DnDComment : Play a looping portal ambience sound on$(13_10)the emitter
/// @DnDInput : 4
/// @DnDArgument : "function" "audio_play_sound_on"
/// @DnDArgument : "arg" "emitter"
/// @DnDArgument : "arg_1" "snd_portal_02"
/// @DnDArgument : "arg_2" "true"
/// @DnDArgument : "arg_3" "1"
audio_play_sound_on(emitter, snd_portal_02, true, 1);