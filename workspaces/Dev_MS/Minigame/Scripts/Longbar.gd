extends Sprite


func _on_Area2D_body_entered(body):
	visible = true
	if body.name == "greendrag":
		get_node("/root/RootScene/OFFICE/Node2D").greenline = true

func _on_Area2D_body_exited(_body):
	visible = false
	
