/// @description Insert description here
// You can write your code in this editor
x = obj_player.x - round(cos(degtorad(obj_player.directionFacing))) * directionBias;
y = obj_player.y + round(sin(degtorad(obj_player.directionFacing))) * directionBias;