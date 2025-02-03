var seconds = date_second_span(date_create_datetime(1970,1,2,0,0,0),date_current_datetime())
show_debug_message("Seconds: " + string(seconds));
random_set_seed(seconds);

image_speed = 1;
image_index = random_range(0,1);