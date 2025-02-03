draw_self();

draw_set_font(BigFont);

draw_set_halign(fa_center);

draw_set_valign(fa_middle);

draw_set_color(c_white);

if add_score {
	draw_text(x, y, text_field + "\nScore: "+ string(global.teacher_score));
} else {
	draw_text(x, y, text_field);
}