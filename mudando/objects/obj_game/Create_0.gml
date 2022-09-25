/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 714518B0
/// @DnDComment : Stop the menu music
/// @DnDArgument : "soundid" "snd_menu_music"
/// @DnDSaveInfo : "soundid" "snd_menu_music"
audio_stop_sound(snd_menu_music);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0211859F
/// @DnDComment : Play the game music
/// @DnDArgument : "soundid" "snd_game_music"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_game_music"
audio_play_sound(snd_game_music, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 0EE740FD
/// @DnDComment : Create transition "end"$(13_10)sequence which ends$(13_10)the transition,$(13_10)because the game has$(13_10)started
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_transition_end"
/// @DnDArgument : "layer" ""Transition""
/// @DnDSaveInfo : "sequenceid" "seq_transition_end"
layer_sequence_create("Transition", 0, 0, seq_transition_end);

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 453E1155
/// @DnDComment : Please see Part 3$(13_10)of the tutorial for$(13_10)this part$(13_10)$(13_10)These particles are$(13_10)not used in this demo
/// @DnDDisabled : 1
/// @DnDArgument : "var" "particle_system"
/// @DnDArgument : "layer" ""Effects""


/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 4CFB1DFF
/// @DnDDisabled : 1
/// @DnDArgument : "var" "fire"
/// @DnDArgument : "blend" "1"


/// @DnDAction : YoYo Games.Particles.Part_Type_Sprite
/// @DnDVersion : 1
/// @DnDHash : 76980C3A
/// @DnDDisabled : 1
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "sprite" "spr_fire_particle"
/// @DnDSaveInfo : "sprite" "spr_fire_particle"


/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 1B2468A5
/// @DnDDisabled : 1
/// @DnDArgument : "typ" "fire"
/// @DnDArgument : "minlife" "17"
/// @DnDArgument : "maxlife" "17"


/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 58293518
/// @DnDDisabled : 1
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "minspeed" "2"
/// @DnDArgument : "maxspeed" "4"


/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 1531D3D8
/// @DnDDisabled : 1
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "mindir" "180"
/// @DnDArgument : "incr" "1"


/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 4AB2AD92
/// @DnDDisabled : 1
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "minsize" "0.7"
/// @DnDArgument : "sizeincr" "0.02"


/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 64489E26
/// @DnDDisabled : 1
/// @DnDArgument : "type" "fire"
/// @DnDArgument : "middle" "0.8"
/// @DnDArgument : "end" "0"