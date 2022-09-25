alpha = 0.5 + dsin(current_time / 5) * 0.5;

if (mouse_check_button_pressed(mb_left)) {
	room_goto(rm_menu);
}