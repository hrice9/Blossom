// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CardData(_cost=0, _title="Sample Card", _desc="Temp Card Description", _art=spr_tempCard, _on_click=function(){show_debug_message("Playing Card")}, _on_condition_complete=function(){show_debug_message("Completed Condition")}) constructor {
	
	manaCost = _cost;
	title = _title;
	description = _desc;
	cardArt = _art;
	on_click = _on_click
	on_condition = _on_condition_complete;
	
	static OnClick = function() {
		on_click();
		// Destroy card here??
	}
	
	static OnComplete = function() {
		on_condition();
	}
	
	#region Getters and Setters
	
	static GetManaCost = function() {
		return manaCost;
	}
	
	static SetManaCost = function(_manaCost) {
		manaCost = _manaCost;
	}
	
	#endregion
}