extends Panel


var ItemClass = preload("res://minigames/Escape-room/Item.tscn")
var Item = null

func _ready():
	if randi() % 2 == 0:
		Item = ItemClass.instance()
		add_child(Item)


func _on_Panel_mouse_entered():
	pass # Replace with function body.
