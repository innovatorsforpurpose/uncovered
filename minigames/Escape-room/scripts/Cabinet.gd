extends Button

onready var Puzzle2a = get_node("/root/Node2D/Cabenits-p2")


func _on_CabinetButton_pressed():
	get_node("/root/Node2D/Front").hide()
	Puzzle2a.show()
	Debug.title = "Cabenit"
