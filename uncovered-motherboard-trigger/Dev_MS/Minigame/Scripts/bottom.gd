extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.



func _on_Area2D_body_entered(body):
	visible = true 
	# print("bodyname")
	if body.name == "yellowdrag":
		get_node("/root/Node2D").yellowline = true
	get_node("/root/Node2D")._on_green_area_body_entered()


func _on_Area2D_body_exited(_body):
	visible = false 
