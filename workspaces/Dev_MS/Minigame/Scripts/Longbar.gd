extends Sprite


func _on_Area2D_body_entered(body):

	if not body.name == "greendrag":
		pass
	if body.name == "greendrag":
		visible = true 
	if body.name == "greendrag":
		get_node("/root/RootScene/OFFICE/Node2D").greenline = true

func _on_Area2D_body_exited(_body):
	pass
