extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


func _on_red_area_body_entered(body):
	visible = true
	if body.name == "reddrag":
		get_node("/root/Node2D").redline = true
	get_node("/root/Node2D")._on_green_area_body_entered()

func _on_red_area_body_exited(body):
	visible = false
