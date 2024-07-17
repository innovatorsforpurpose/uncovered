extends Button


onready var puzzle2c = get_node("/root/Node2D/Computer")


func _on_Computer_pressed():
		get_node("/root/Node2D/Front").hide()
		get_node("/root/Node2D/PlayerGUI/TurnBtn").hide()
		puzzle2c.show()
