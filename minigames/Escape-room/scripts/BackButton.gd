extends Button

onready var background_prev = get_node("/root/Node2D/Front")

var is_front = false

func _process(_delta):
	if background_prev.visible == true:
		hide()
	else:
		show()


func _on_Button_pressed():
	var Cabinets = get_node("/root/Node2D/Cabenits-p2")
	var Door = get_node("/root/Node2D/Door")
	var computer = get_node("/root/Node2D/Computer")
	if background_prev.visible == false:
		Cabinets.hide()
		Door.hide()
		computer.hide()
		background_prev.show()

