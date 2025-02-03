if (keyboard_check(ord("A")) && !place_meeting(x-char_speed, y, [obj_desk, obj_deskcomputer]))
{
    x -= char_speed;
}
else if (keyboard_check(ord("D")) && !place_meeting(x+char_speed, y, [obj_desk, obj_deskcomputer]))
{
    x += char_speed;
}
else if (keyboard_check(ord("W")) && !place_meeting(x, y-char_speed, [obj_desk, obj_deskcomputer]))
{
    y -= char_speed;
}
else if (keyboard_check(ord("S")) && !place_meeting(x, y+char_speed, [obj_desk, obj_deskcomputer]))
{
    y += char_speed;
}

if mouse_check_button(mb_left) {
	sprite_index = TeacherSmack;
}