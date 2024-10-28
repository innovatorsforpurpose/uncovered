extends Node2D

signal emit
signal paused

func _ready():
	print(PlayerInventory.inventory.size())
	var _emit = connect("emit",get_node("/root/Node2D/PlayerGUI/Inv"),"_on_Key_emit")




