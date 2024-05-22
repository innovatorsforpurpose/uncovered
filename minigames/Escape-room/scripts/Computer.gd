extends Button


onready var puzzle2c = get_node("/root/Node2D/Computer")


func _on_Computer_pressed():
		get_node("/root/Node2D/Front").hide()
		get_node("/root/Node2D/Button2").hide()
		puzzle2c.show()
