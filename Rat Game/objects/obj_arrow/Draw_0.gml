/// @description Insert description here
// You can write your code in this editor
with (obj_player){
	other.x = x
	other.y = y
}
with (instance_nearest(x,y,obj_grate)){
	other.facingDirection = point_direction(other.x, other.y, x, y)
}

x += cos(degtorad(facingDirection)) * min(player_dist, distance_to_object(obj_grate))
y += sin(degtorad(-facingDirection)) * min(player_dist, distance_to_object(obj_grate))
scale = min(0.5, distance_to_object(obj_grate))
draw_sprite_ext(spr_arrow, 0, x, y, scale, scale, facingDirection-90, c_white, 1)