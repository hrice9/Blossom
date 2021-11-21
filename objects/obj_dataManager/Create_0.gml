/// @description Insert description here
// You can write your code in this editor

randomize();


map_seed = irandom_range(100000000, 999999999);
show_debug_message(map_seed);


start_tile = instance_create_layer(room_width/2, room_height - 250, layer, obj_mapTile);
create_map();