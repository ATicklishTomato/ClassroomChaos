hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) 
{
	clicked = true;
} 

if (mouse_check_button_released(mb_left)) 
{
	clicked = false;

	if (hovering) 
	{
		audio_play_sound(Click, 1, false);
		if target == 3 {
			game_end();
		} else {
			room_goto(menu[target]);
		}
	}
} 

if (clicked) 
{
	image_index = 2;
} 
else if (hovering) 
{
	image_index = 1;
} 
else 
{
	image_index = 0;
} 