extends Sprite







func _on_Blue_area_body_entered(body):
	visible = true
	if body.name == "bluedrag":
		get_node("/root/Node2D").blueline = true


func _on_Blue_area_body_exited(body):
	visible = false

