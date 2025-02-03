//show_debug_message("Tantrum status: " + string(tantrum));

if round(random_range(0, tantrum_chance)) == 1 && !tantrum && tantrum_timeout_counter <= 0 {
	sprite_index = StudentTantrum;
	tantrum = true;
} else if tantrum_timeout_counter > 0 {
	tantrum_timeout_counter -= tantrum_timeout_decrease;
}

if !tantrum && sprite_index == StudentTantrum {
	sprite_index = StudentWorking;
}

if current_time % 10000 <= 20 {
	tantrum_chance = max(1000, tantrum_chance - 500);
	tantrum_timeout_decrease = min(tantrum_timeout_decrease + 1000, 5000);
}