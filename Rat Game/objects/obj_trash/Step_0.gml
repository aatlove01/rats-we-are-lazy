/// @description Insert description here
// You can write your code in this editor
if !visible { return }

if (place_meeting(x,y, obj_player)){
	playerInTrigger = true;
	global.lastTrashbagInPlayer = id;
}
else {
	playerInTrigger = false
}

//grate

//keyboard commands
if(keyboard_check((ord("C")))) {
	if (!obj_player.holding) {
		obj_player.moveSpeed = 10
	}
	
	if(playerInTrigger){
			obj_player.moveSpeed = 6
			obj_player.holding = true
			x = obj_player.x + offset
			y = obj_player.y + offset
	}
	
} else if (obj_player.holding) {

	if (keyboard_check_released((ord("C")))) {
		//grate
		if(place_meeting(x,y,obj_grate)){
			obj_manager.trash_collected +=1;
			instance_destroy(self)
		}
		numHeld = 0
		obj_player.holding = false
	}
	

	
} else {
	obj_player.moveSpeed = 10
}