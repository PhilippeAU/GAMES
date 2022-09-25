/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3CD6210A
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6829FB4B
/// @DnDComment : This is the amount of damage the enemy does to$(13_10)the player.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "damage"
damage = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 243F9625
/// @DnDComment : This sets the movement speed for the enemies.
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "move_speed"
move_speed = 2;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 5219C9ED
/// @DnDComment : This applies either move_speed or negative move_speed$(13_10)to the enemy's X velocity. This way the enemy will$(13_10)either move left or right (at random).
/// @DnDInput : 2
/// @DnDArgument : "var" "vel_x"
/// @DnDArgument : "option" "-move_speed"
/// @DnDArgument : "option_1" "move_speed"
vel_x = choose(-move_speed, move_speed);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6FD944E2
/// @DnDComment : This sets the friction to 0 so the enemy never comes$(13_10)to a stop.
/// @DnDArgument : "var" "friction_power"
friction_power = 0;