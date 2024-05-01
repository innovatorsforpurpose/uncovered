extends Panel


var ItemClass = preload("res://minigames/Escape-room/Item.tscn")
var Item = null

func _ready():
	if randi() % 2 == 0:
		Item = ItemClass.instance()
		add_child(Item)
