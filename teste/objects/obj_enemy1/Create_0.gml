/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3BD08233
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34D15F53
/// @DnDComment : This is the object that replaces the enemy$(13_10)once it is defeated.
/// @DnDArgument : "expr" "obj_enemy1_defeated"
/// @DnDArgument : "var" "defeated_object"
defeated_object = obj_enemy1_defeated;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5AB6E56E
/// @DnDComment : This sets the movement speed for this particular$(13_10)enemy.
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "move_speed"
move_speed = 2;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 7B9B7998
/// @DnDComment : This applies either move_speed or negative move_speed$(13_10)to the enemy's X velocity. This way the enemy will$(13_10)either move left or right (at random).$(13_10)$(13_10)This action is present in the enemy parent object as$(13_10)well, but we're running it again in this child object,$(13_10)as its move_speed value has changed.
/// @DnDInput : 2
/// @DnDArgument : "var" "vel_x"
/// @DnDArgument : "option" "-move_speed"
/// @DnDArgument : "option_1" "-move_speed"
vel_x = choose(-move_speed, -move_speed);