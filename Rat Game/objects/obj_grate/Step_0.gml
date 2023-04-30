/// @description Insert description here
// You can write your code in this editor
playerInTrigger = place_meeting(x,y, obj_player);

if(playerInTrigger && keyboard_check(ord("X"))){
	room_goto(rm_night_results)
}