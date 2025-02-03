if place_meeting(x, y,  global.collision_objects) {
	//We're hard stuck, time to force movement
	if y < 734/2 {
		y+= char_speed;
	} else {
		y-= char_speed;
	}
	
	if x < 286/2 {
		x+= char_speed;
	} else {
		x-= char_speed;
	}
}

if (keyboard_check(ord("A")) && !place_meeting(x-char_speed, y, global.collision_objects))
{
    x -= char_speed;
}
else if (keyboard_check(ord("D")) && !place_meeting(x+char_speed, y, global.collision_objects))
{
    x += char_speed;
}
else if (keyboard_check(ord("W")) && !place_meeting(x, y-char_speed, global.collision_objects))
{
    y -= char_speed;
}
else if (keyboard_check(ord("S")) && !place_meeting(x, y+char_speed, global.collision_objects))
{
    y += char_speed;
}

if mouse_check_button(mb_left) && !has_chair {
	var target = instance_position(mouse_x, mouse_y, obj_chair);
	if target != noone && target.object_index == obj_chair {
		instance_destroy(target.id);
		sprite_index = TeacherChair;
		has_chair = true;
		alarm[0] = 600;
		pause_throw = 8;
	} else {
		sprite_index = TeacherSmack;
	}
} else if mouse_check_button(mb_left) && has_chair && pause_throw <= 0 {
	//var chair = instance_create_layer(x, y, "Instances", obj_chairprojectile);
	var chair = instance_create_depth(x, y, -100, obj_chairprojectile);
	chair.speed = 30;
	chair.direction = point_direction(x, y, mouse_x, mouse_y);
	has_chair = false;
	sprite_index = Teacher;
} else if mouse_check_button(mb_left) && has_chair {
	pause_throw -= 1;
}

if current_time % 1000 <= 20 {
	var tantrum_count = 0;
	for (var i = 0; i < instance_number(obj_student); ++i;)
	{
	    var student = instance_find(obj_student,i);
		if student.tantrum {
			global.chaos += 1;
			tantrum_count += 1;
		}
	}
	if tantrum_count <= 0 {
		global.chaos = max (0, global.chaos - 10);
	}
	
	if global.chaos > max_chaos {
		room_goto(GameOver);
	}
}