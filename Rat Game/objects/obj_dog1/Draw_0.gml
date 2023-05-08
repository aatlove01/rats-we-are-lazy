/// @description Insert description here
// You can write your code in this editor
sprite_order = [0,1,0,2]

if xprevious != x || yprevious != y
{
	spriteIdx += delta_time / 200000
	directionFacing = point_direction(xprevious, yprevious, x, y) - 90
}
draw_sprite_ext(sprite, sprite_order[int64(spriteIdx) % 4], x, y, 1,1, directionFacing, c_white, 1)