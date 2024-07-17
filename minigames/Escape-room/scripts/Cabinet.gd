extends Button

onready var Puzzle2a = get_node("/root/Node2D/Cabenits-p2")

func _on_CabinetButton_pressed() -> void:
	get_node("/root/Node2D/Front").hide()
	get_node("/root/Node2D/PlayerGUI/TurnBtn").hide()
	Puzzle2a.show()
	
