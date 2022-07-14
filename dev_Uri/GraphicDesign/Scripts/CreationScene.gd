extends Node2D

const LAYERS = 10
const BUTTON_MARGIN = 55

func _ready():
	var button = get_node("LayerButton")
	for i in range(LAYERS):
		var clone = button.duplicate()
		clone.margin_top += i * BUTTON_MARGIN
		clone.margin_bottom += i * BUTTON_MARGIN
		clone.get_children()[0].text = "Layer "+str(i+1)
		add_child(clone)
