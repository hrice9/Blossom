// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function with_shader(shader, callback){
	shader_set(shader);
	callback();
	shader_reset();
}