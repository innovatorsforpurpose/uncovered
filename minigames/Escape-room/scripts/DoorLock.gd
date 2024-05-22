extends Button

onready var puzzle2b = get_node("/root/Node2D/Door")
func _on_DoorLock_pressed():
	get_node("/root/Node2D/Front").hide()
	get_node("/root/Node2D/Button2").hide()
	puzzle2b.show()
