extends Button

onready var puzzle2d = get_node("/root/Node2D/Tablet")
func _ready():
	pass


func _on_TabletButton_pressed():
	get_node("/root/Node2D/Front").hide()
	puzzle2d.show()
