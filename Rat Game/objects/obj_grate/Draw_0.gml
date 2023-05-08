/// @description Insert description here
// You can write your code in this editor
with (obj_player) {
	if place_meeting(x,y,other){
		draw_set_halign(fa_center)
		draw_set_font(fnt_Game)
		draw_text(other.x, other.y - 50, "Press X to sleep for the night")
		if keyboard_check_pressed(ord("X")){
			room_goto(rm_night_results)
			with (obj_manager) {
				spawn_x = other.x
				spawn_y = other.y
			}
		}
	}
}