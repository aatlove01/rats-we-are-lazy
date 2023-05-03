/// @description Insert description here
// You can write your code in this editor
playerInTrigger = place_meeting(x,y, obj_player);

if(playerInTrigger and keyboard_check_pressed(ord("E"))) {
	obj_manager.trash_collected += 1;
	
	//comment the line below out if you want to test the carrying mechanic
	instance_destroy(self);
}

if(playerInTrigger and keyboard_check(ord("E"))) {
	
	x = obj_player.x;
	y = obj_player.y;
}
