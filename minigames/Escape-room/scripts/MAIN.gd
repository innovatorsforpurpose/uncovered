extends Node2D

func _ready():
	print(PlayerInventory.inventory.size())
	yield(get_tree().create_timer(2),"timeout")
	get_node("PlayerGUI/Label").say("I need to escape this room!!")




