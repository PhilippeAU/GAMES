/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1A562DB6
/// @DnDComment : This runs the Create event of the parent,$(13_10)ensuring the player gets all variables$(13_10)from the character parent.
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5AF156C1
/// @DnDComment : This variable stores the number of coins$(13_10)the player has collected.
/// @DnDArgument : "var" "coins"
coins = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 76A6322D
/// @DnDComment : This variable tells whether the player is currently$(13_10)in knockback (from being hit by an enemy). It will$(13_10)be true if it is, and false if not.
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "in_knockback"
in_knockback = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C5C4CB3
/// @DnDComment : This is the object that replaces the player$(13_10)once it is defeated.
/// @DnDArgument : "expr" "obj_player_defeated"
/// @DnDArgument : "var" "defeated_object"
defeated_object = obj_player_defeated;