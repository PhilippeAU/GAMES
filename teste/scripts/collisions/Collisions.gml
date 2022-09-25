/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5F95FA66
/// @DnDComment : This function checks if the instance is colliding$(13_10)with an object, or a tile, at the current$(13_10)position + the given movement values (_move_x and$(13_10)_move_y).$(13_10)$(13_10)The function returns true if a collision was found,$(13_10)or false if a collision was not found.
/// @DnDInput : 2
/// @DnDArgument : "funcName" "check_collision"
/// @DnDArgument : "arg" "_move_x"
/// @DnDArgument : "arg_1" "_move_y"
function check_collision(_move_x, _move_y) 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5D529D74
	/// @DnDComment : This checks for an object collision$(13_10)at the new position, where the instance$(13_10)is going to move$(13_10)$(13_10)We get the new position by using relative$(13_10)coordinates and specifying _move_x and _move_y$(13_10)as the relative X and Y values, which are $(13_10)added onto the instance's X and Y values
	/// @DnDParent : 5F95FA66
	/// @DnDArgument : "x" "_move_x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "_move_y"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_collision"
	/// @DnDSaveInfo : "object" "obj_collision"
	var l5D529D74_0 = instance_place(x + _move_x, y + _move_y, obj_collision);
	if ((l5D529D74_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 78BA5AB8
		/// @DnDComment : If there was an object collision,$(13_10)return true, and end the function
		/// @DnDParent : 5D529D74
		/// @DnDArgument : "value" "true"
		return true;
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 118575A2
	/// @DnDComment : The function continues if there were no object$(13_10)collisions. In this case we check for tile$(13_10)collisions, at each corner of the instance's$(13_10)bounding box.$(13_10)$(13_10)This checks for tile collision at the top-left corner$(13_10)of the instance's mask
	/// @DnDParent : 5F95FA66
	/// @DnDArgument : "x" "bbox_left + _move_x"
	/// @DnDArgument : "y" "bbox_top + _move_y"
	/// @DnDArgument : "var" "left_top"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l118575A2_0 = layer_tilemap_get_id("CollisionTiles");
	var left_top = undefined;
	if(l118575A2_0 > -1) {
		var l118575A2_1 = tilemap_get_at_pixel(l118575A2_0, bbox_left + _move_x, bbox_top + _move_y);
		if(l118575A2_1 > -1) left_top = tile_get_index(l118575A2_1);
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 124372BE
	/// @DnDComment : This checks for tile collision at the top-right corner$(13_10)of the instance's mask
	/// @DnDParent : 5F95FA66
	/// @DnDArgument : "x" "bbox_right + _move_x"
	/// @DnDArgument : "y" "bbox_top + _move_y"
	/// @DnDArgument : "var" "right_top"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l124372BE_0 = layer_tilemap_get_id("CollisionTiles");
	var right_top = undefined;
	if(l124372BE_0 > -1) {
		var l124372BE_1 = tilemap_get_at_pixel(l124372BE_0, bbox_right + _move_x, bbox_top + _move_y);
		if(l124372BE_1 > -1) right_top = tile_get_index(l124372BE_1);
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 43C28678
	/// @DnDComment : This checks for tile collision at the bottom-right corner$(13_10)of the instance's mask
	/// @DnDParent : 5F95FA66
	/// @DnDArgument : "x" "bbox_right + _move_x"
	/// @DnDArgument : "y" "bbox_bottom + _move_y"
	/// @DnDArgument : "var" "right_bottom"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l43C28678_0 = layer_tilemap_get_id("CollisionTiles");
	var right_bottom = undefined;
	if(l43C28678_0 > -1) {
		var l43C28678_1 = tilemap_get_at_pixel(l43C28678_0, bbox_right + _move_x, bbox_bottom + _move_y);
		if(l43C28678_1 > -1) right_bottom = tile_get_index(l43C28678_1);
	}

	/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
	/// @DnDVersion : 1
	/// @DnDHash : 648FA000
	/// @DnDComment : This checks for tile collision at the bottom-left corner$(13_10)of the instance's mask
	/// @DnDParent : 5F95FA66
	/// @DnDArgument : "x" "bbox_left + _move_x"
	/// @DnDArgument : "y" "bbox_bottom + _move_y"
	/// @DnDArgument : "var" "left_bottom"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "layername" ""CollisionTiles""
	var l648FA000_0 = layer_tilemap_get_id("CollisionTiles");
	var left_bottom = undefined;
	if(l648FA000_0 > -1) {
		var l648FA000_1 = tilemap_get_at_pixel(l648FA000_0, bbox_left + _move_x, bbox_bottom + _move_y);
		if(l648FA000_1 > -1) left_bottom = tile_get_index(l648FA000_1);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 55E4DA3B
	/// @DnDComment : The results of the above four actions were stored in temporary$(13_10)variables. If any of those variables were true, meaning a tile$(13_10)collision was found at any given corner, we return true and end$(13_10)the function.
	/// @DnDParent : 5F95FA66
	/// @DnDArgument : "expr" "left_top or right_top or right_bottom or left_bottom"
	if(left_top or right_top or right_bottom or left_bottom)
	{
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 4D3B6F54
		/// @DnDParent : 55E4DA3B
		/// @DnDArgument : "value" "true"
		return true;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 33ECBB65
	/// @DnDComment : If no tile collisions were found, the function continues.$(13_10)In that case we return false, to indicate that no collisions$(13_10)were found, and the instance is free to move to the new position.
	/// @DnDParent : 5F95FA66
	/// @DnDArgument : "value" "false"
	return false;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5BE84DD7
variable = 0;