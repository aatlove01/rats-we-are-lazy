/// @description Insert description here
// You can write your code in this editor
playerInTrigger = place_meeting(x,y, obj_player);

if(!destroyed && playerInTrigger && keyboard_check(ord("E"))){
	destroyed = true;
	obj_manager.food_gathered+=1;
	show_debug_message(obj_manager.food_gathered);

}