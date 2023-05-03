/// @description Insert description here
// You can write your code in this editor
if(playerInTrigger) {
	draw_sprite_ext(Sprite15, 0, x,y,1.1,1.1,0,c_blue,1);
	draw_self();
}
if(keyboard_check(ord("E")) and playerInTrigger){
	draw_sprite_ext(Sprite15, 0, x,y,1,1,0,c_blue,1);
} else { 
	draw_self();
}