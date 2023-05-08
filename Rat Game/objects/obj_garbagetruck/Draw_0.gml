/// @description Insert description here
// You can write your code in this editor
if abs(x-xprevious) > 1 || abs(y-yprevious) > 1{
	facingDirection = point_direction(xprevious, yprevious, x, y)
}
draw_sprite_ext(sprite, 0, x, y, 0.8,0.8, facingDirection, c_white, 1)