if (sprite_index == TeacherSmack) {
	var euclid_dist = sqrt(power(mouse_x - x, 2) + power(mouse_y - y, 2));
	show_debug_message("Distance: "+ string(euclid_dist));
	if euclid_dist < 200 {
		var target = instance_position(mouse_x, mouse_y, obj_student);
		if target != noone && target.object_index == obj_student {
			target.tantrum = false;
			target.tantrum_timeout_counter = 10000;
			global.teacher_score += 10;
			chaos = max(0, chaos - 5);
		}
	}
	sprite_index = Teacher
}