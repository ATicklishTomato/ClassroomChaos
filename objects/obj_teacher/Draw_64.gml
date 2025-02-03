draw_set_font(BaseFont);
draw_set_color(c_red);
draw_text(115,15, "Score: " + string(global.teacher_score) + "   Chaos: ");
draw_healthbar(500, 50, 250, 5, ((max_chaos - chaos) / max_chaos)*100, c_red, c_green, c_green, 0, true, true);