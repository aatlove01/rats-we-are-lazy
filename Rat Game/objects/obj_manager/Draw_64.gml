/// @description Insert description here
// You can write your code in this editor

if room == rm_CityFinal
{
	if show_night_begin
	{
		draw_set_halign(fa_center);
		draw_set_font(fnt_GameB);
		draw_text(display_get_gui_width()/2, display_get_gui_height()/2-200, "The Night Begins")
		draw_set_font(fnt_Game);
		draw_text(display_get_gui_width()/2, display_get_gui_height()/2-100, "Scavenge for food before garbage pickup time!")
	}	
	if show_garbage_pickup
	{
		draw_set_halign(fa_center);
		draw_set_font(fnt_GameB);
		draw_text(display_get_gui_width()/2, display_get_gui_height()/2-200, "Garbage Pickup Time is Here")
		draw_set_font(fnt_Game);
		draw_text(display_get_gui_width()/2, display_get_gui_height()/2-100, "Hurry, get as much food as you can before it's cleaned up!")
	}	
	if show_night_end
	{
		draw_set_halign(fa_center);
		draw_set_font(fnt_GameB);
		draw_text(display_get_gui_width()/2, display_get_gui_height()/2-200, "The Sun is Rising")
		draw_set_font(fnt_Game);
		draw_text(display_get_gui_width()/2, display_get_gui_height()/2-100, "Find a grating to sleep in for the day!")
	}
}

if room == rm_night_results
{
	draw_set_halign(fa_center);
	draw_set_font(fnt_Game);
	if reserves < 0{
		draw_set_font(fnt_GameB);
		draw_text(room_width/2, room_height/2 - 200, "GAME OVER")
	} 
	draw_set_font(fnt_Game);
	draw_text(room_width/2, room_height/2, "Food Reserves: " + string(reserves + food_gathered + trash_collected))
	draw_text(room_width/2, room_height/2 - 50, "Containers Ratted: " + string(food_gathered))
	draw_text(room_width/2, room_height/2 - 100, "Food Gathered: " + string(trash_collected))
	
}

if room == rm_game_over
{
	draw_set_halign(fa_center);
	draw_set_font(fnt_Game);
	draw_text(room_width/2, room_height/2 + 50, "Nights Survived: " + string(nights_survived))
}