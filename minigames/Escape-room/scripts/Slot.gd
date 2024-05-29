extends Panel


var ItemClass = preload("res://minigames/Escape-room/Item.tscn")
var Item = null

func _ready():
	if randi() % 2 == 0:
		Item = ItemClass.instance()
		add_child(Item)

func pickFromSlot():
	remove_child(Item)
	var inventoryNode = find_parent("Inventory")
	inventoryNode.add_child(Item)
	Item = null

func putIntoSlot(new_item):
	Item = new_item
	Item.position = Vector2(0,0)
	var inventoryNode = find_parent("Inventory")
	inventoryNode.remove_child(Item)
	add_child(Item)
