/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5179DB60
/// @DnDComment : This is the horizontal movement speed of the character.$(13_10)It's in pixels per second.
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "move_speed"
move_speed = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78B86BD3
/// @DnDComment : This is the friction value applied to the character's$(13_10)horizontal movement every frame.$(13_10)$(13_10)This is applied in the Begin Step event. The friction$(13_10)is reduced when the character is in mid-air.
/// @DnDArgument : "expr" "0.7"
/// @DnDArgument : "var" "friction_power"
friction_power = 0.7;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B96D840
/// @DnDComment : This is the jumping speed of the character.
/// @DnDArgument : "expr" "23"
/// @DnDArgument : "var" "jump_speed"
jump_speed = 23;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 384B1BD1
/// @DnDComment : This is the gravity applied every frame.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "grav_speed"
grav_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 25D7CC36
/// @DnDComment : vel_x and vel_y are the X and Y velocities of the character.$(13_10)They store how much the character is moving in any given frame.
/// @DnDInput : 2
/// @DnDArgument : "var" "vel_x"
/// @DnDArgument : "var_1" "vel_y"
vel_x = 0;
vel_y = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7597D011
/// @DnDComment : grounded: This stores whether the character is currently on the ground.$(13_10)grounded_x: This stores the X position of the character when it was last on ground.$(13_10)grounded_y: Same but on the Y axis.$(13_10)$(13_10)These variables are used to put the player back on the ground after it has fallen.
/// @DnDInput : 3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "x"
/// @DnDArgument : "expr_2" "y"
/// @DnDArgument : "var" "grounded"
/// @DnDArgument : "var_1" "grounded_x"
/// @DnDArgument : "var_2" "grounded_y"
grounded = false;
grounded_x = x;
grounded_y = y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B45726A
/// @DnDComment : 'max_hp' is the maximum health for the$(13_10)character.$(13_10)$(13_10)'hp' is the actual health of the character.$(13_10)It's initialised at the same value as 'max_hp'.
/// @DnDInput : 2
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "expr_1" "max_hp"
/// @DnDArgument : "var" "max_hp"
/// @DnDArgument : "var_1" "hp"
max_hp = 3;
hp = max_hp;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D603BE7
/// @DnDComment : This variable is used to grant the player invincibility,$(13_10)after it's hit by an enemy or after it falls off ground.$(13_10)$(13_10)It stores the remaining number of frames where the player$(13_10)can't be hurt. If it's 0, it means the player is not invincible.
/// @DnDArgument : "var" "no_hurt_frames"
no_hurt_frames = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 263BE646
/// @DnDComment : This is the object that replaces the character once$(13_10)it is defeated. By default it's set to 'obj_player_defeated'$(13_10)and its value may be changed in a child object.
/// @DnDArgument : "expr" "obj_player_defeated"
/// @DnDArgument : "var" "defeated_object"
defeated_object = obj_player_defeated;