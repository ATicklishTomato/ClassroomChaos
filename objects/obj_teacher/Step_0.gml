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

if current_time % 1000 <= 20 {
	var tantrum_count = 0;
	for (var i = 0; i < instance_number(obj_student); ++i;)
	{
	    var student = instance_find(obj_student,i);
		if student.tantrum {
			chaos += 1;
			tantrum_count += 1;
		}
	}
	if tantrum_count <= 0 {
		chaos = max (0, chaos - 10);
	}
	
	if chaos > max_chaos {
		room_goto(GameOver);
	}
}