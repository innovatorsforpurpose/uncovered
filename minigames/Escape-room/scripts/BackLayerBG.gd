extends ParallaxLayer

func _process(_delta):
	self.position = get_local_mouse_position() * 0.02



func _on_GearBox_pressed():
	get_node("/root/Node2D/GearBox").show()
	get_node("/root/Node2D/Front").hide()
	get_node("/root/Node2D/TurnBtn").hide()
	get_node("/root/Node2D/Back").hide()
