if random_range(0, 1) > 0.5 {
	instance_create_layer(64, 480, "Instances", obj_chair);
} else {
	instance_create_layer(1728, 224, "Instances", obj_chair);
}