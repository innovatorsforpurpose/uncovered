extends Sprite




func _on_Area2D_body_entered(body):

	if not body.name == "greendrag":
		pass
	if body.name == "greendrag":
		visible = true 
	if body.name == "greendrag":
		get_node("/root/RootScene/OFFICE/Node2D").greenline = true
	if body.name == "greendrag":
		get_node("/root/RootScene/OFFICE/Node2D")._on_green_area_body_entered()

func _on_Area2D_body_exited(_body):
	 pass

func _on_Blue_area_body_entered(_body):
	pass # Replace with function body.
