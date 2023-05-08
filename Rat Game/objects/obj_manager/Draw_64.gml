/// @description Insert description here
// You can write your code in this editor



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