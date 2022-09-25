var width = 1080, height = 1920, scale = min(1, display_get_height() / 1920);

show_debug_message("Display height: " + string(display_get_height()));
show_debug_message("Resolution scale calculated: " + string(scale));

window_set_size(width*scale, height*scale);
surface_resize(application_surface, width*scale, height*scale);

window_set_position(display_get_width()/2-(width*scale)/2, display_get_height()/2-(height*scale)/2);
display_set_gui_size(width*scale, height*scale);