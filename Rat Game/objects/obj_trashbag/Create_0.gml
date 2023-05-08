//generates normal distribution random number using box-muller with mean mu and std sigma
function Random_Normal(mu, sigma){
	return sigma * sqrt(-2*ln(random(1))) * cos(2*pi*random(1)) + mu
}

global.lastTrashbagInPlayer = pointer_null

destroyed = false
playerInTrigger = false
trashSprite = TrashbagUntouched
destroyedSprite = TrashbagDestroyed
variation = 0
canPlaySound = true
mean_spawn_time = obj_manager.difficulty/obj_manager.max_difficulty * obj_manager.garbage_pickup_time
appear_time = max(Random_Normal(mean_spawn_time, mean_spawn_time/2), 10)
alarm[0] = appear_time
visible = false