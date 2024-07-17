extends Button

onready var background_prev = get_node("/root/Node2D/Front")
var is_front = false

func _process(_delta):
	if background_prev.visible == false && get_node("/root/Node2D/Back").visible == false:
		show()
	else:
		hide()


func _on_Button_pressed():
	var Cabinets = get_node("/root/Node2D/Cabenits-p2")
	var Door = get_node("/root/Node2D/Door")
	var computer = get_node("/root/Node2D/Computer")
	var tablet = get_node("/root/Node2D/Tablet")
	var TurnBtn = get_node("/root/Node2D/PlayerGUI/TurnBtn")
	var gb = get_node("/root/Node2D/GearBox")
	if background_prev.visible == false:
		Cabinets.hide()
		Door.hide()
		computer.hide()
		tablet.hide()
		gb.hide()
		background_prev.show()
		TurnBtn.show()
