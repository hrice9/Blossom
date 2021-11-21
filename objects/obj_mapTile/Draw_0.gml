
if(children != []) {
	for(var i = 0; i < array_length(children); i++) {
		var child = children[i];
		
		draw_line(x, y, child.x, child.y);
	}
}

draw_self();