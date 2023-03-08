extends Sprite




func _on_Blue_area_body_entered(body):
	visible = true
	print(body.name)
	if body.name == "bluedrag":
		
		get_node("/root/Node2D").blueline = true
	get_node("/root/Node2D")._on_green_area_body_entered()


func _on_Blue_area_body_exited(body):
	visible = false
