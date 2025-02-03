if (sprite_index == TeacherSmack) {
	var euclid_dist = sqrt(power(mouse_x - x, 2) + power(mouse_y - y, 2));
	show_debug_message("Distance: "+ string(euclid_dist));
	if euclid_dist < 200 {
		var target = instance_position(mouse_x, mouse_y, obj_student);
		show_debug_message(string(target != noone) + string(target.object_index == obj_student) + string(target.tantrum));
		if target != noone && target.object_index == obj_student {
			target.tantrum = false;
			target.tantrum_timeout_counter = 10000;
			show_debug_message(string(target.tantrum));
		}
	}
	sprite_index = Teacher
}