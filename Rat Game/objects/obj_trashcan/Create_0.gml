bag_self = instance_create_layer(x, y, layer, obj_trashbag)
/*with (bag_self) {
	trashSprite = trashCan
	destroyedSprite = trashCan
}*/
instance_destroy(self)
//generates normal distribution random number using box-muller with mean mu and std sigma
/*function Random_Normal(mu, sigma){
	return sigma * sqrt(-2*ln(random(1))) * cos(2*pi*random(1)) + mu
}

destroyed = false
playerInTrigger = false
trashSprite = trashCan
instance_deactivate_object(self)
mean_spawn_time = obj_manager.difficulty/obj_manager.max_difficulty * obj_manager.garbage_pickup_time
alarm[0] = max(Random_Normal(mean_spawn_time, mean_spawn_time/2), 10)
visible = true*/