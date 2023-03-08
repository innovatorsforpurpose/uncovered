extends Sprite




func _on_Area2D_body_entered(body):
	visible = true
	if body.name == "greendrag":
		get_node("/root/Node2D").greenline = true
	get_node("/root/Node2D")._on_green_area_body_entered()


func _on_Area2D_body_exited(body):
	 visible = false


func _on_Blue_area_body_entered(body):
	pass # Replace with function body.
