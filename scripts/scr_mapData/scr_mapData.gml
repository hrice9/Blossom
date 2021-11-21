


function create_map_tile(parent) {
	
	var tile_x = parent.x + irandom_range(-100, 100);
	var tile_y = parent.y - irandom_range(100, 250);
	
	
	var tile = instance_create_layer(tile_x, tile_y, layer, obj_mapTile);
	
	
	array_push(parent.children, tile);
	
	return tile;
}


function create_map() {
	random_set_seed(obj_dataManager.map_seed);
	
	// create tiles
	
	num_possible_reward_tiles = 15;
	num_possible_battle_tiles = 10;
	reward_to_battle_ratio = num_possible_battle_tiles/num_possible_reward_tiles;
	
	var tile = create_map_tile(start_tile);
	
	for(var i = 0; i < 5; i++) {
		tile = create_map_tile(tile);
	}
}